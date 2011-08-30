<?php
$val .= <<<SSVIEWER
<form id="searchForm" 
SSVIEWER;
$val .=  $item->XML_val("FormAttributes",null,true) ;
 $val .= <<<SSVIEWER
>
	<input name="Search" type="text" placeholder="Search">
	<input type="submit" class="button" value="Go">
</form>
SSVIEWER;
