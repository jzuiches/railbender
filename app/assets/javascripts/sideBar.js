$(document).ready(function() {

  $('body').addClass('js');
  var $menulink = $('.hamburger');
  var $wrapper = $(".wrapper");
  $menulink.click(function() {
    $menulink.toggleClass('active');
    $wrapper.toggleClass('active');
    return false;
  });
  });