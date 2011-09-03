
    <div class="grid_1">
        <% include BreadCrumbs %>
        
        <h1>$Title</h1>
        $Content
        $Form

    </div><!-- .col_1 -->
    
    <div class="grid_2">
        <% if Menu(2) %>
            <% include SubNavigation %>
        <% end_if %>
     </div><!-- .col_2 -->
