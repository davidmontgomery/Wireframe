<?php
/**
 * This is a standard Product page-type with fields like
 * Price, Weight, Model/Author and basic management of
 * groups.
 * 
 * It also has an associated Product_OrderItem class,
 * an extension of OrderItem, which is the mechanism
 * that links this page type class to the rest of the
 * eCommerce platform. This means you can add an instance
 * of this page type to the shopping cart.
 * 
 * @package ecommerce
 */
class Product extends Page {
	
	public static $db = array(
		'Price' => 'Currency',
		'Weight' => 'Decimal(9,2)',
		'Model' => 'Varchar(30)',
		'FeaturedProduct' => 'Boolean',
		'AllowPurchase' => 'Boolean',
		'InternalItemID' => 'Varchar(30)',
		
		'NumberSold' => 'Int' //store number sold, so it doesn't have to be computed on the fly
	);
	
	public static $has_one = array(
		'Image' => 'Product_Image'
	);
	
	public static $has_many = array(
		'Variations' => 'ProductVariation'
	);
	
	public static $many_many = array(
		'ProductGroups' => 'ProductGroup'
	);
	
	public static $belongs_many_many = array();
	
	public static $defaults = array(
		'AllowPurchase' => true
	);
	
	public static $casting = array();
	
	public static $summary_fields = array(
		'ID','InternalItemID' => 'Product Code','Title','Price','Weight','Model','NumberSold'
	);
	
	public static $searchable_fields = array(
		'ID','Title','InternalItemID','Weight','Model','Price'
	);
	
	public static $singular_name = 'Product';
	
	public static $plural_name = 'Products';
	
	static $default_parent = 'ProductGroup';
	
	static $default_sort = 'Title ASC';
	
	static $add_action = 'a Product Page';
	
	static $icon = 'ecommerce/images/icons/package';
	
	static $number_sold_calculation_type = "SUM"; //SUM or COUNT
	
	static $global_allow_purcahse = true;
	
	function getCMSFields() {
		$fields = parent::getCMSFields();

		// Standard product detail fields
		$fields->addFieldToTab('Root.Content.Main',new TextField('Price', _t('Product.PRICE', 'Price'), '', 12),'Content');
		$fields->addFieldToTab('Root.Content.Main',new TextField('Weight', _t('Product.WEIGHT', 'Weight (kg)'), '', 12),'Content');
		$fields->addFieldToTab('Root.Content.Main',new TextField('Model', _t('Product.MODEL', 'Model/Author'), '', 30),'Content');
		$fields->addFieldToTab('Root.Content.Main',new TextField('InternalItemID', _t('Product.CODE', 'Product Code'), '', 30),'Content');

		if(!$fields->dataFieldByName('Image')) {
			$fields->addFieldToTab('Root.Content.Images', new ImageField('Image', _t('Product.IMAGE', 'Product Image')));
		}

		// Flags for this product which affect it's behaviour on the site
		$fields->addFieldsToTab(
			'Root.Content.Main',
			array(
				new CheckboxField('FeaturedProduct', _t('Product.FEATURED', 'Featured Product')),
				new CheckboxField('AllowPurchase', _t('Product.ALLOWPURCHASE', 'Allow product to be purchased'), 1)
			)
		);

		$fields->addFieldsToTab(
			'Root.Content.Variations', 
			array(
				new HeaderField(_t('Product.VARIATIONSSET', 'This product has the following variations set')),
				new LiteralField('VariationsNote', '<p class="message good">If this product has active variations, the price of the product will be the price of the variation added by the member to the shopping cart.</p>'),
				$this->getVariationsTable()
			)
		);

		$fields->addFieldsToTab(
			'Root.Content.Product Groups',
			array(
				new HeaderField(_t('Product.ALSOAPPEARS', 'This product also appears in the following groups')),
				$this->getProductGroupsTable()
			)
		);
		
		return $fields;
	}
	
	/**
	 * Enables developers to completely turning off the ability to purcahse products.
	 */
	static function set_global_allow_purcahse($allow = false){
		self::$global_allow_purcahse = $allow;		
	}
	
	/**
	 * Recaulculates the number sold for all products. This should be run as a cron job perhaps daily.
	 */
	static function recalculate_numbersold(){
		
		$ps = singleton('Product');
		$q = $ps->buildSQL("`Product`.`AllowPurchase` IS TRUE");
		$select = $q->select;
		
		$select['NewNumberSold'] = self::$number_sold_calculation_type."(OrderItem.Quantity) AS NewNumberSold"; 
		
		$q->select($select);
		$q->groupby("Product.ID");
		$q->orderby("NewNumberSold DESC");

		$q->leftJoin('Product_OrderItem','Product.ID = Product_OrderItem.ProductID');
		$q->leftJoin('OrderItem','Product_OrderItem.ID = OrderItem.ID');
		$records = $q->execute();
		$productssold = $ps->buildDataObjectSet($records, "DataObjectSet", $q, 'Product');
		
		//TODO: this could be done faster with an UPDATE query (SQLQuery doesn't support this yet @11/06/2010)
		foreach($productssold as $product){
			if($product->NewNumberSold != $product->NumberSold){
				$product->NumberSold = $product->NewNumberSold;
				$product->writeToStage('Stage');
				$product->publish('Stage', 'Live');
			}
		}

	} 
	
	function getVariationsTable() {
		$singleton = singleton('ProductVariation');
		$query = $singleton->buildVersionSQL("`ProductID` = '{$this->ID}'");
		$variations = $singleton->buildDataObjectSet($query->execute());
		$filter = $variations ? "`ID` IN ('" . implode("','", $variations->column('RecordID')) . "')" : "`ID` < '0'";
		//$filter = "`ProductID` = '{$this->ID}'";
		
		$tableField = new HasManyComplexTableField(
			$this,
			'Variations',
			'ProductVariation',
			array(
				'Title' => 'Title',
				'Price' => 'Price'
			),
			'getCMSFields_forPopup',
			$filter
		);
		
		if(method_exists($tableField, 'setRelationAutoSetting')) {
			$tableField->setRelationAutoSetting(true);
		}
		
		return $tableField;
	}
	
	protected function getProductGroupsTable() {
		$tableField = new ManyManyComplexTableField(
			$this,
			'ProductGroups',
			'ProductGroup',
			array(
				'Title' => 'Product Group Page Title'
			)
		);
		
		$tableField->setPageSize(30);
		$tableField->setPermissions(array());
		
		//TODO: use a tree structure for selecting groups
		//$field = new TreeMultiselectField('ProductGroups','Product Groups','ProductGroup'); 
		
		return $tableField;
	}
	
	/**
	 * Returns the shopping cart.
	 * @todo Does HTTP::set_cache_age() still need to be set here?
	 * 
	 * @return Order
	 */
	function getCart() {
		if(!self::$global_allow_purcahse) return false;
		HTTP::set_cache_age(0);
		return ShoppingCart::current_order();
	}
	
	/**
	 * Conditions for whether a product can be purchased.
	 * 
	 * If it has the checkbox for 'Allow this product to be purchased',
	 * as well as having a price, it can be purchased. Otherwise a user
	 * can't buy it.
	 * 
	 * @return boolean
	 */
	function getAllowPurchase() {
		if(!self::$global_allow_purcahse) return false;
		return $this->db('AllowPurchase') && $this->Price;
	}
	
	/**
	 * Returns if the product is already in the shopping cart.
	 * Note : This function is usable in the Product context because a
	 * Product_OrderItem only has a Product object in attribute
	 * 
	 * @return boolean
	 */
	function IsInCart() {
		return ($this->Item() && $this->Item()->Quantity > 0) ? true : false;
	}
	
	/**
	 * Returns the order item which contains the product
	 * Note : This function is usable in the Product context because a
	 * Product_OrderItem only has a Product object in attribute
	 */
	function Item() { //TODO: could this be sped up by using the ShoppingCart::get_item_by_id()?
		if($item = ShoppingCart::get_item_by_id($this->ID))
			return $item;
		return new Product_OrderItem($this,0); //return dummy item so that we can still make use of Item  
	}
	
	/**
	 * Return the currency being used on the site.
	 * @return string Currency code, e.g. "NZD" or "USD"
	 */
	function Currency() {
		if(class_exists('Payment')) {
			return Payment::site_currency();
		}
	}
	
	/**
	 * Return the global tax information of the site.
	 * @return TaxModifier
	 */
	function TaxInfo() {
		$currentOrder = ShoppingCart::current_order();
		return $currentOrder->TaxInfo();
	}
	
	//passing on shopping cart links ...is this necessary?? ...why not just pass the cart?
	function addLink() {
		return ShoppingCart_Controller::add_item_link($this->ID);
	}
	
	function removeLink() {
		return ShoppingCart_Controller::remove_item_link($this->ID);
	}
	
	function removeallLink() {
		return ShoppingCart_Controller::remove_all_item_link($this->ID);
	}
	
	/**
	 * When the ecommerce module is first installed, and db/build
	 * is invoked, create some default records in the database.
	 */
	function requireDefaultRecords() {
		parent::requireDefaultRecords();
		
		if(!DataObject::get_one('Product')) {		
			if(!DataObject::get_one('ProductGroup')) singleton('ProductGroup')->requireDefaultRecords();
			if($group = DataObject::get_one('ProductGroup', '', true, '`ParentID` DESC')) {
				$content = '<p>This is a <em>product</em>. It\'s description goes into the Content field as a standard SilverStripe page would have it\'s content. This is an ideal place to describe your product.</p>';
				
				$page1 = new Product();
				$page1->Title = 'Example product';
				$page1->Content = $content . '<p>You may also notice that we have checked it as a featured product and it will be displayed on the main Products page.</p>';
				$page1->URLSegment = 'example-product';
				$page1->ParentID = $group->ID;
				$page1->Price = '15.00';
				$page1->Weight = '0.50';
				$page1->Model = 'Joe Bloggs';
				$page1->FeaturedProduct = true;
				$page1->writeToStage('Stage');
				$page1->publish('Stage', 'Live');
				DB::alteration_message('Product page \'Example product\' created', 'created');
				
				$page2 = new Product();
				$page2->Title = 'Example product 2';
				$page2->Content = $content;
				$page2->URLSegment = 'example-product-2';
				$page2->ParentID = $group->ID;
				$page2->Price = '25.00';
				$page2->Weight = '1.2';
				$page2->Model = 'Jane Bloggs';
				$page2->writeToStage('Stage');
				$page2->publish('Stage', 'Live');
				DB::alteration_message('Product page \'Example product 2\' created', 'created');		
			}
		}
	}
	
}

class Product_Controller extends Page_Controller {
	
	function init() {
		parent::init();
		Requirements::themedCSS('Product');
		Requirements::themedCSS('Cart');
	}
	
}

class Product_Image extends Image {

	public static $db = array();
	
	public static $has_one = array();
	
	public static $has_many = array();
	
	public static $many_many = array();
	
	public static $belongs_many_many = array();
	
	//default image sizes
	protected static $thumbnail_width = 140;
	protected static $thumbnail_height = 100;
	
	protected static $content_image_width = 200;
	
	protected static $large_image_width = 600;
	
	function set_thumbnail_size($width = 140, $height = 100){
		self::$thumbnail_width = $width;
		self::$thumbnail_height = $height;
	}
	
	function set_content_image_width($width = 200){
		self::$content_image_width = $width;
	}
	
	function set_large_image_width($width = 600){
		self::$large_image_width = $width;
	}
	
	function generateThumbnail($gd) {
		$gd->setQuality(80);
		return $gd->paddedResize(self::$thumbnail_width,self::$thumbnail_height);
	}
	
	function generateContentImage($gd) {
		$gd->setQuality(90);
		return $gd->resizeByWidth(self::$content_image_width);
	}
	
	function generateLargeImage($gd) {
		$gd->setQuality(90);
		return $gd->resizeByWidth(self::$large_image_width);
	}
	
}
class Product_OrderItem extends OrderItem {
	
	protected $_productID;
	
	protected $_productVersion;
	
	static $db = array(
		'ProductVersion' => 'Int'
	);
	
	static $has_one = array(
		'Product' => 'Product'
	);
	
	public function __construct($product = null, $quantity = 1) {
		// Case 1: Constructed by getting OrderItem from DB
		if(is_array($product)) {
			$this->ProductID = $this->_productID = $product['ProductID'];
			$this->ProductVersion = $this->_productVersion = $product['ProductVersion'];
		}
		
		// Case 2: Constructed in memory
		if(is_object($product)) {		
			$this->_productID = $product->ID;
 			$this->_productVersion = $product->Version;
		}
		
 		parent::__construct($product, $quantity);
	}
	
	function getProductIDForSerialization() {
		return $this->_productID;
	}
	
	/**
	 * Overloaded Product accessor method.
	 *  
	 * Overloaded from the default has_one accessor to
	 * retrieve a product by it's version, this is extremely
	 * useful because we can set in stone the version of
	 * a product at the time when the user adds the item to
	 * their cart, so if the CMS admin changes the price, it
	 * remains the same for this order.
	 * 
	 * @param boolean $current If set to TRUE, returns the latest published version of the Product,
	 * 								If set to FALSE, returns the set version number of the Product
	 * 						 		(instead of the latest published version)
	 * @return Product object
	 */
	public function Product($current = false) {
		if($current) return DataObject::get_by_id('Product', $this->_productID);
		elseif($this->_productID && $this->_productVersion)
			return Versioned::get_version('Product', $this->_productID, $this->_productVersion);
	}
	
	function hasSameContent($orderItem) {
		$equals = parent::hasSameContent($orderItem);
		return $equals && $orderItem instanceof Product_OrderItem && $this->_productID == $orderItem->_productID && $this->_productVersion == $orderItem->_productVersion;
	}
	
	function UnitPrice() {
		return $this->Product()->Price;
	}
	
	function TableTitle() {
		return $this->Product()->Title;
	}

	function Link() {
		if($product = $this->Product(true)) return $product->Link();
	}
	
	function addLink() {
		return ShoppingCart_Controller::add_item_link($this->_productID);
	}
	
	function removeLink() {
		return ShoppingCart_Controller::remove_item_link($this->_productID);
	}
	
	function removeallLink() {
		return ShoppingCart_Controller::remove_all_item_link($this->_productID);
	}
	
	function setquantityLink() {
		return ShoppingCart_Controller::set_quantity_item_link($this->_productID);
	}

	function onBeforeWrite() {
		parent::onBeforeWrite();

		$this->ProductID = $this->_productID;
		$this->ProductVersion = $this->_productVersion;
	}
	
	public function debug() {
		$title = $this->TableTitle();
		$productID = $this->_productID;
		$productVersion = $this->_productVersion;
		return parent::debug() .<<<HTML
			<h3>Product_OrderItem class details</h3>
			<p>
				<b>Title : </b>$title<br/>
				<b>Product ID : </b>$productID<br/>
				<b>Product Version : </b>$productVersion
			</p>
HTML;
	}
	
}
?>