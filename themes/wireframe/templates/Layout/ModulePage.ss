<div class="grid_full">
	<% include BreadCrumbs %>
</div>
<div class="grid_1">
	<div class="padding_1">
		<h1>$Title</h1>
		$Content
		
		<!-- Lightbox module -->
		<div class="section">
			<h2>Modal</h2>
			<p><a class="modal" href="#">Open modal</a></p>
			<div class="hide">
				<div id='modal1'>
					<h3>This content comes from a hidden element on this page.</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					<a class="example5" href="../content/flash.html">Click here to load new content</a></p>
				</div><!-- /modal1 -->
			</div>
		</div><!-- /section -->
		
		<!-- Button module -->
		<div class="section">
			<h2>Button</h2>
			<a class="button" href="#">Button</a><br />
			<span class="button">
				<input type="submit" value="Submit">
			</span>
		</div><!-- /section -->
		
		<!-- Box module -->
		<div class="section">
			<h2>Box</h2>
			<div class="box">
				<div class="padding_1">
					<p>Here is and example of a box class.</p>
				</div>
			</div><!-- /box -->
		</div><!-- /section -->
		
		<!-- Accordion module -->
		<div class="section">
			<h2>Accordion</h2>
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