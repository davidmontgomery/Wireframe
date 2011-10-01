 
 
 
 <% if FeaturedArticles %>
 
 
 
 <h1>Featured Content ($SelectedYear)</h1>
 
 
 
 <!-- container for the slides -->
<div id="holderScroll">
  <!-- container for the slides -->
  <div class="images">
  
<% control FeaturedArticles %>
	
<div class="captioned_photo">
		
          <img src="<% control FeatureImg %>$CroppedImage(610,320).URL<% end_control %>" alt="$FeatureTitle" />

		
		<a href="$Link" class="cascadelink">$FeatureTitle</a>
        
        
		<p>$FeatureCaption</p>
</div>


<% end_control %>
    
    
</div>

<!-- "next slide" button -->

<!-- the tabs -->

<div id="nextbox">
	<a class="backward"> </a>
  
  	<div class="tabs">
    
    <% control FeaturedArticles %>
    <a href="#">$Pos</a>
    <% end_control %>
 
	</div>

  <a class="forward"> </a>

</div>
</div>



<% end_if %>