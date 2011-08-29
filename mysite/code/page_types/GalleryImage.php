<?php
class GalleryImage extends DataObject {
    static $db = array (
        'GalleryImageTitle' => 'Text'
    );
    
    static $has_one = array (
        'MyGalleryImage' => 'Image',
        'BelongToEventPage' => 'GalleryPage'
    );
    
    public function getCMSFields_forPopup() {
        return new FieldSet(
            new TextField('GalleryImageTitle'),
            new FileIFrameField('MyGalleryImage')
        );
    }
}