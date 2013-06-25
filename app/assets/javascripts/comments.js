$(document).ready(function(){


$('body').bind('ajax:success', function(e, cool_beans) {
    // //remember cool_beans is a div, so you are putting a div inside a temporary div and accessing children() 
    console.log(cool_beans);
    // console.log('hello');
    //  // alert($('<div>').append(cool_beans).children().children('h5').html());
    
    // var new_comment = $('<div>').append(cool_beans).children().data("item-id");
    // var comment = $('<div>').append(cool_beans).children().children('h5').html();
    // console.log(new_comment);
    // console.log(comment);
    // console.log('how many times are you getting here?')
    // // alert('.comments' + new_comment);
    // $('.comments' + new_comment).append(comment);
    //   });


});