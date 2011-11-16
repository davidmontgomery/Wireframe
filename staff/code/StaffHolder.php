<?php

class StaffHolder extends Page {
	static $icon = 'themes/wireframe/images/icons/staff';
	
	static $db = array(
	);

	static $has_one = array(
	);

	static $allowed_children = array('StaffPage');
}

class StaffHolder_Controller extends Page_Controller {

}