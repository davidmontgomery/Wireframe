<div class="grid_full">
	<% include BreadCrumbs %>
</div>
<div class="grid_1">
	<div class="padding_1">
		<h1>$Title</h1>
		<h2>Heading level 2</h2>
		<p>This is a <a href="#">link</a> dolor sit amet, <strong>bold text</strong> and  <em>emphasized</em>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
		<p>This is an <a href="http://www.test.com">external link</a>, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
		<ul>
			<li><a href="#">List item</a></li>
			<li>List item</li>
			<li>List item</li>
		</ul>
		<ol>
			<li><a href="#">List item</a></li>
			<li>List item</li>
			<li>List item</li>
		</ol>
		<h3>Heading level 3</h3>
		<p>This is a paragraph Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
		<p>This is a paragraph Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
		<h4>Heading level 4</h4>
		<p>This is a paragraph Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
		<p>This is a paragraph Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
		<h4>Heading level 5</h4>
		<p>This is a paragraph Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
		<p>This is a paragraph Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
		<h4>Heading level 6</h4>
		<p>This is a paragraph Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
		<p>This is a paragraph Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
		
		<h2>Modules</h2>
		<ul class="accordion">
			<li>
				<h4 class="clickable">Item One</h4>
				<div class="content">
					<p>Some content here.</p>
				</div>
			</li>
			<li>
				<h4 class="clickable">Item Two</h4>
				<div class="content">
					<p>Some content here.</p>
				</div>
			</li>
			<li>
				<h4 class="clickable">Item Three</h4>
				<div class="content">
					<p>Some content here.</p>
				</div>
			</li>
		</ul><!-- /accordion -->
	</div><!-- padding_1 -->
</div><!-- /grid_1 -->
<div class="grid_2">
	<% if Menu(2) %>
		<% include SubNavigation %>
	<% end_if %>
</div><!-- /grid_2 -->