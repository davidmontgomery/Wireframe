<?php
$val .= <<<SSVIEWER
<div class="content">
	<h1>
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
</h1>
	
SSVIEWER;
$val .=  $item->XML_val("Content",null,true) ;
 $val .= <<<SSVIEWER

</div><!-- /content -->
SSVIEWER;
