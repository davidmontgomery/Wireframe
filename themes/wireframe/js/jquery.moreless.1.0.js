/*
Name:       More/Less Text Collapser
Version:    1.0 (February 22th, 2010)
Author:     Adam C. Miller

Licence:    More/Less Text Collapser is licensed under the MIT license
http://www.opensource.org/licenses/mit-license.php
 
*/

jQuery.fn.moreLess = function(options) {
    var textID = this;
    var opts = $.extend({}, $.fn.moreLess.defaults, options);
    if ($(textID).text().length < opts.minimumTextLength)
        return $(this);

    if (!opts.startExpanded)
        InsertSpan(true, $(textID));
    InsertControls();

    $("span.moreLessControls").click(ControlClick);
    return $(this);
    function ControlClick() {
        var content = $(this).prev('.moreLessContent');
        var collapsed = content.length > 0;
        if (collapsed && content[0].style.display == 'none') {
            content.slideDown(opts.speed, function() {
                $(this).before(content.html()).remove();
                if (typeof opts.callback == 'function') {
                    opts.callback.call();
                }
            });
            ToggleControls(collapsed, $(this));
        }
        else {
            var parent = $(this).parent();
            $(this).remove();
            InsertSpan(false, parent);
            parent.append($(this));
            ToggleControls(collapsed, $(this));
            $(this).prev('.moreLessContent').slideUp(opts.speed, function() {
                if (typeof opts.callback == 'function') {
                    opts.callback.call();
                }
            });
            $(this).click(ControlClick);
        }
    }
    function ToggleControls(collapsed, control) {
        control.html(collapsed ? opts.expandedText : opts.collapsedText);
    }
    function InsertSpan(collapsed, control) {
        var index = opts.truncateIndex;
        var text = control.text();
        var html = control.html();
        if (opts.truncateChar != null) {
            index = control.text().indexOf(opts.truncateChar, index);
            if (index < 0 || index > opts.maximumTruncateIndex)
                index = opts.truncateIndex;

        }
        control.html(html.substring(0, index) + "<span class='moreLessContent' " + (collapsed ? "style='display:none;'" : "") + ">" + html.substring(index, html.length) + "</span>");

    };
    function InsertControls(expanded) {
        $(textID).append("<span class='moreLessControls'>" + (opts.startExpanded ? opts.expandedText : opts.collapsedText) + "</span>");
    }
};

// Default Options
$.fn.moreLess.defaults = {
startExpanded: false,
collapsedText: '... <span class="moreLessControl">More</span>',
expandedText: ' <span class="moreLessControl">Less...</span>',
truncateIndex: 150,
maximumTruncateIndex: 200,
truncateChar: ' ',
minimumTextLength: 300,
speed: 'fast',
callback: null
};