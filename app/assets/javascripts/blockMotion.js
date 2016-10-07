$( document ).ready(function() {
var $previous = $("#last").prevAll()
$("#last").hover(function(){
  console.log("hello")
  $previous.toggleClass("slide-left");
});


});
