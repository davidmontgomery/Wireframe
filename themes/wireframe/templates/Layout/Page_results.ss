<div class="content">
    <% if Results %>
        <section class='listing'>
            <% control Results %>
                <article>
                    <header>
                        <% if MenuTitle %>
                            <h2><a href="$Link">$MenuTitle</a></h2>
                        <% else %>
                            <h2><a href="$Link">$Title</a></h2>
                        <% end_if %>
                    </header>
                    
                    <% if Content %>
                        $Content.FirstParagraph(html) 
                    <% end_if %>
                
                    <a class="readMoreLink" href="$Link" title="Read more about &quot;{$Title}&quot;">Read more about &quot;{$Title}&quot;...</a>
                </article>
            <% end_control %>
        </section>
    <% else %>
        <p>No results found. Please try another search term.</p>
    <% end_if %>

    <% if Results.MoreThanOnePage %>
        <section class="pagination">
            <% if Results.NextLink %>
                <a class="next" href="$Results.NextLink" title="View the next page">Next</a>
            <% end_if %>
        
            <% if Results.PrevLink %>
                <a class="prev" href="$Results.PrevLink" title="View the previous page">Prev</a>
            <% end_if %>
        
            <% control Results.Pages %>
                <% if CurrentBool %>
                    $PageNum
                <% else %>
                    <a href="$Link" title="View page number $PageNum">$PageNum</a>
                <% end_if %>
            <% end_control %>
        </section><!-- .pagination -->
    <% end_if %>
</div><!-- .content -->