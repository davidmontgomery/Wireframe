<div class="content">
	<div class="grid_full">
		<% include BreadCrumbs %>
	</div>
	<div class="grid_1">
		<div class="padding_1">
			<h1>$Title</h1>
			<h2>Heading level 2</h2>
			<p>This is a paragraph Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
			<p>This is a paragraph Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
			<h3>Heading level 3</h3>
			<p>This is a paragraph Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
			<p>This is a paragraph Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
			<ul>
				<li>List item</li>
				<li>List item</li>
				<li>List item</li>
			</ul>
		</div>
	</div><!-- /grid_1 -->
	<div class="grid_2">
		<div class="box">
			<div class="padding_1">
				<p>Here is and example of a box class.</p>
			</div>
		</div>
		<% if Menu(2) %>
			<% include SubNavigation %>
		<% end_if %>
	</div><!-- /col_2 -->
</div><!-- /content -->