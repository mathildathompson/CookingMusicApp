$(document).ready(function(){

$('input').addClass('commentbutton');


$('body').bind('ajax:success', function(e, cool_beans) {
    //remember cool_beans is a div, so you are putting a div inside a temporary div and accessing children() 
    console.log(cool_beans);
     // alert($('<div>').append(cool_beans).children().children('h5').html());
     var comment = $('<div>').append(cool_beans).children().children('h5').html();
    $('#comment_body').val('');
    var new_comment = $('<div>').append(cool_beans).children().data("item-id");
    // alert('.comments' + new_comment);
    $('.comments' + new_comment).append(cool_beans);
      });

$('.hideunlessclicked').hide();
$('#commentsbox h5').click(function(){
    $('.hideunlessclicked').slideToggle('slow', function(){

    });
  });
});