
$(document).ready(function () {
    var height = $('.item').height();  //getting windows height
    jQuery('#sec').css('margin-top', height + 'px');   //and setting height of carousel
    console.log(height);
});
$(window).resize(function () {
    var height = $('.item').height();  //getting windows height
    jQuery('#sec').css('margin-top', height + 'px');   //and setting height of carousel
    
});