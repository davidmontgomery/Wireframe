<?php
class MyImageGalleryPage extends ImageGalleryPage {
	static $icon = 'themes/wireframe/images/icons/gallery';
	
	public function getCMSFields($cms) {
		$f = parent::getCMSFields($cms);
		$f->removeByName('Configuration');
		return $f;
	}
	
	public $CoverImageWidth = '215';
	public $CoverImageHeight = '120';
	public $ThumbnailSize = '102';
	public $Square =  '0';
	public $MediumSize = '400';
	public $NormalSize = '600';
	public $MediaPerPage = '30';
	public $MediaPerLine = '6';
	public $UploadLimit = '20';
	public $GalleryUI = '';
}

class MyImageGalleryPage_Controller extends ImageGalleryPage_Controller {
}