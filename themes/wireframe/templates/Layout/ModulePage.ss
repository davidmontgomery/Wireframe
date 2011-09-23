<div class="grid_full">
	<% include BreadCrumbs %>
</div>
<div class="grid_1">
	<div class="padding_1">
		<h1>$Title</h1>
		$Content
		<div class="section">
			<h3>Slide Caption</h3>
			<div class="tile">
				<img src="$ThemeDir/images/temp/temp-image1.jpg" width="400" height="100" alt="Temp Image1">
				<div class="caption">
					<div class="head">
						<span>Caption Title</span>
					</div>
					<div class="body">
						<p>Some content here</p>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Lightbox module -->
		<div class="section">
			<h3>Lightbox</h3>
			<ul>
				<li>
					<a id="various1" title="Lorem ipsum dolor sit amet">Inline</a>
					<div class="hide">
						<div id="inline1">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis mi eu elit tempor facilisis id et neque. Nulla sit amet sem sapien. Vestibulum imperdiet porta ante ac ornare. Nulla et lorem eu nibh adipiscing ultricies nec at lacus. Cras laoreet ultricies sem, at blandit mi eleifend aliquam. Nunc enim ipsum, vehicula non pretium varius, cursus ac tortor. Vivamus fringilla congue laoreet. Quisque ultrices sodales orci, quis rhoncus justo auctor in. Phasellus dui eros, bibendum eu feugiat ornare, faucibus eu mi. Nunc aliquet tempus sem, id aliquam diam varius ac. Maecenas nisl nunc, molestie vitae eleifend vel, iaculis sed magna. Aenean tempus lacus vitae orci posuere porttitor eget non felis. Donec lectus elit, aliquam nec eleifend sit amet, vestibulum sed nunc.
						</div>
					</div>
				</li>
				<li>
					<a id="example5" title="Image 1 Lorem ipsum dolor sit amet, consectetur adipiscing elit." href="$ThemeDir/images/temp/gallery-image1.jpg">Single photo</a>
				</li>
				<li>
					<a title="Lorem ipsum dolor sit amet" href="$ThemeDir/images/temp/gallery-image1.jpg" rel="example_group">Gallery</a>
					<div class="hide">
						<a title="Image 2 ipsum dolor sit amet" href="$ThemeDir/images/temp/gallery-image2.jpg" rel="example_group"></a>
						<a title="Image 3 ipsum dolor sit amet" href="$ThemeDir/images/temp/gallery-image3.jpg" rel="example_group"></a>
					</div>
				</li>
			</ul>
		</div><!-- /section -->
		
		<!-- Tooltip -->
		<div class="section">
			<h3>Tooltip</h3>
			<p>Here is a <a class="tooltip" title="Here is a title that goes here." href="#">tooltip</a>.</p
		</div><!-- /section -->
		
		<!-- Button module -->
		<div class="section">
			<h3>Button</h3>
			<a class="button" href="#"><span>Button</span></a><br />
			<div class="button">
				<input type="submit" value="Submit">
			</div>
		</div><!-- /section -->
		
		<!-- Box module -->
		<div class="section">
			<h3>Box</h3>
			<div class="box">
				<div class="padding_1">
					<p>Here is and example of a box class.</p>
				</div>
			</div><!-- /box -->
		</div><!-- /section -->
		
		<!-- Accordion module -->
		<div class="section">
			<h3>Accordion</h3>
			<ul class="accordion">
				<li>
					<h4 class="clickable">Item One</h4>
					<div class="body">
						<p>Lorem ipsum dolor sit amet olore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					</div>
				</li>
				<li>
					<h4 class="clickable">Item Two</h4>
					<div class="body">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
						
					</div>
				</li>
				<li>
					<h4 class="clickable">Item Three</h4>
					<div class="body">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					</div>
				</li>
			</ul><!-- /accordion -->
		</div><!-- /section -->
	</div><!-- /padding_1 -->
</div><!-- /grid_1 -->
<div class="grid_2">
	<div class="padding_1">
		<% if Menu(2) %>
			<% include SubNavigation %>
		<% end_if %>
	</div>
</div><!-- /col_2 -->