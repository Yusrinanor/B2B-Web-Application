$(function(){
    $( '.imagedes, .wrapper' ).hover(function(){
    $( this ).parent().find('div').show();
    $( this ).parent().find('img').css('opacity', '0.3');
    }, function(){
        $( this ).parent().find('div').hide();
        $( this ).parent().find('img').css('opacity', '1');
    }
)});