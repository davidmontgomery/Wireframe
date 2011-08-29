<div class="content">
    <div class="col_1">
        <% include BreadCrumbs %>
        
        <h1>$Title</h1>
        $Content
        $Form
        $PageComments
    </div><!-- .col_1 -->
    
    <div class="col_2">
        <% if Menu(2) %>
            <% include SubNavigation %>
        <% end_if %>
     </div><!-- .col_2 -->
</div><!-- .content -->