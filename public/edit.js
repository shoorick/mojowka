function wrap(prefix, suffix) {
    $('#article').wrapSelection(prefix, suffix);
    $('#article').focus();
    return false;
}

$(document).ready(function() {

    // Tie onclick action to all .ajax links
    $('a#preview_link').click(function() {
        $.ajax({
            url:        '/preview',
            type:       'post',
            data:       { article: $('#article').val() },
            dataType:   'html',
            success:    function(data, textStatus) {
                $('div#preview_area').html(data);
                $('div#preview_area').show();
            },
            error:      function() {
                alert('Can not preview');
            }
        });
        return false;
    });
    $('#article').resizable({
                    handles: 's'
            });

    $('#btn_bold').click(function(){ wrap('*', '*') });
    $('#btn_italic').click(function(){ wrap('_', '_') });
    $('#btn_h1').click(function(){ wrap('\n\nh1. ', '\n\n') });
    $('#btn_h2').click(function(){ wrap('\n\nh2. ', '\n\n') });
    $('#btn_h3').click(function(){ wrap('\n\nh3. ', '\n\n') });
    $('#btn_ul').click(function(){ wrap('\n\n* ', '\n\n') });
    $('#btn_ol').click(function(){ wrap('\n\n# ', '\n\n') });

});
