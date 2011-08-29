<?php

class GalleryPage extends Page {   
    static $db = array(
    );
    
    static $has_one = array(
    );
    
    static $has_many = array(
        'GalleryImages' => 'GalleryImage'
    );
    
    function getCMSFields() {
        $fields = parent::getCMSFields();
          
          $manager = new ImageDataObjectManager(
              $this, // Controller
              'GalleryImages', // Source name
              'GalleryImage', // Source class
              'MyGalleryImage', // File name on DataObject
              array(
                  'GalleryImageTitle' => 'GalleryImageTitle'
              ), // Headings

              'getCMSFields_forPopup' // Detail fields (function name or FieldSet object)
              // Filter clause
              // Sort clause
              // Join clause
          );
          
          $fields->addFieldToTab('Root.Content.GalleryImage', $manager);
          
          return $fields;
    }
}

class GalleryPage_Controller extends Page_Controller {
    function GalleryPaginate() {
        $numImages = 5; // Number of photos per page
        
        if(!isset($_GET['start']) || !is_numeric($_GET['start']) || (int)$_GET['start'] < 1) $_GET['start'] = 0;
        $SQL_start = (int)$_GET['start'];
        $doSet = DataObject::get(
        $callerClass = "GalleryImage",
        $filter = "`BelongToEventPageID` = '".$this->ID."'",
        $sort = "",
        $join = "",
        $limit = "{$SQL_start}, $numImages"
        );

        return $doSet ? $doSet : false;
    }
}