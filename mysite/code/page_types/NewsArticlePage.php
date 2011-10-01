<?php 

class NewsArticlePage extends Page { 
static $db = array(
'Date'=>'Date',
'Category' => "Enum('Press Release,Local Issues,National Coverage,ECT Announcements')",
'Caption'=>'Text',
'Author'=>'Text',
'ShowInFeatured' => 'Boolean',
'FeatureTitle' => 'Text',
'FeatureCaption' => 'Text'
);
 
static $has_one = array(
'NewsImage'=>'Image',
'FeatureImg'=>'Image'
);

static $icon = "themes/ect/images/treeicons/news";




public function getCMSFields()
	{
		$f = parent::getCMSFields();
		
		$DateField = new DateField('Date','Date'); 
      	$DateField->setConfig('showcalendar', true); 
      	$DateField->setConfig('dateformat', 'dd-MM-YYYY');

   		$f->addFieldToTab('Root.Content.Main', $DateField, 'Content'); 
		$f->addFieldToTab('Root.Content.Main', new Textfield('Author','Author'),'Content');
		$f->addFieldToTab('Root.Content.Main', new DropdownField('Category','Category',singleton('NewsArticlePage')->dbObject('Category')->enumValues()), 'Content');
		$f->addFieldToTab('Root.Content.Main', new ImageField($name='NewsImage',$title='Upload news image file (optional)',$folderName='NewsImages'), 'Content'); 
		$f->addFieldToTab('Root.Content.Main', new Textfield('Caption','News image caption (optional)'),'Content');
		
		// Article Page Features
		$f->addFieldToTab('Root.Content.FeatureArticle', new CheckboxField('ShowInFeatured','Show this article in the Featured section'));
		$f->addFieldToTab('Root.Content.FeatureArticle', new Textfield('FeatureTitle','Feature Headline'));
		$f->addFieldToTab('Root.Content.FeatureArticle', new ImageField($name='FeatureImg',$title='Banner image for this feature',$folderName='NewsImages'));
		$f->addFieldToTab('Root.Content.FeatureArticle', new TextareaField('FeatureCaption','Banner caption'));
		
		$f->removeByName('Banners');
		$f->removeByName('PageFeatures');
		
		
		
		return $f;
	}
	
	
	
	
	
	
	//change the sort in the site tree to the date
	
function onBeforeWrite() {
    // check on first write action, aka "database row creation" (ID-property is not set)
    if($this->ID) {
 
	$newsort =  date('Ymd', strtotime($this->Date));
	$newsort = 1-$newsort;
	$this->record['Sort'] = $newsort;
	 
    }

    // CAUTION: You are required to call the parent-function, otherwise sapphire will not execute the request.
    parent::onBeforeWrite();
  }






 
	
	
	
	 
} 

class NewsArticlePage_Controller extends Page_Controller {
	
	
	
	
	
 
 
 
 public function PrevNextPage($Mode = 'next') {
   
  if($Mode == 'next'){
    $Where = "ParentID = ($this->ParentID) AND Sort < ($this->Sort)";
    $Sort = "Sort DESC";
  }
  elseif($Mode == 'prev'){
    $Where = "ParentID = ($this->ParentID) AND Sort > ($this->Sort)";
    $Sort = "Sort ASC";
  }
  else{
    return false;
  }
   
  return DataObject::get("NewsArticlePage", $Where, $Sort, null, 1);
     
}

	

	
	
	
	 

} 

?>