<?php

class ArticlePage extends Page {   
    static $db = array(
        'Date' => 'Date',
        'Title' => 'Text'
    );
    
    static $has_one = array(
        'Photo' => 'Image'
    );
    
    function getCMSFields() {        
        $fields = parent::getCMSFields();

        $datefield = new Datefield('Date','Date');
        $datefield->setConfig('showcalendar', true);
        $datefield->setConfig('dateformat', 'dd-MM-YYYY');
        $fields->addFieldToTab('Root.Content.Main', $datefield, 'Content');
        $fields->addFieldToTab('Root.Content.Main', new TextField('Title'), 'Content');      
        $fields->addFieldToTab('Root.Content.Images', new ImageField('Photo'));
        
        return $fields;
    } 
}

class ArticlePage_Controller extends Page_Controller {
    
}