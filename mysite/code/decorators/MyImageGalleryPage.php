<?php
class MyImageGalleryPage extends ImageGalleryPage {
	static $icon = 'themes/wireframe/images/icons/gallery';
	
	public function getCMSFields($cms) {
		$f = parent::getCMSFields($cms);
		$f->removeByName('Configuration');
		return $f;
	}
	
	public $CoverImageWidth = '138';
	public $CoverImageHeight = '92';
	public $ThumbnailSize = '116';
	public $Square =  '1';
	public $MediumSize = '400';
	public $NormalSize = '600';
	public $MediaPerPage = '30';
	public $MediaPerLine = '6';
	public $UploadLimit = '20';
	public $GalleryUI = '';
}

class MyImageGalleryPage_Controller extends ImageGalleryPage_Controller {
}