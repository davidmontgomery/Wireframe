<?php

class NewsHolder extends BlogHolder {
	static $icon = 'themes/wireframe/images/icons/news';
	
	
	public static $db = array(
		
	);

	public static $has_one = array(
		
	);
	
	static $allowed_children = array(
		'NewsEntry'
	);	
	

}

class NewsHolder_Controller extends BlogHolder_Controller {
}