$( document ).ready(function() {
  var slideWidth = $(".block").width() * $(".block").length;
  var blockWidth = $(".block").width();
  var windowWidth = $(window).width();
console.log(windowWidth)
  var position = 0;

$(".left").click(function(e) {
    e.preventDefault();
    console.log("click");
    if ( position <= slideWidth-windowWidth ) {
      position += (Math.floor(windowWidth/blockWidth) * blockWidth);
    }else{
      position = 0;
    }

    $(".slider-wrapper").animate( { scrollLeft: position }, 1000);
  });

  var pos = 0;
  $(".right").click(function(e) {
    e.preventDefault();
    console.log("click");
    if ( pos <= slideWidth-windowWidth ) {

      position -= (Math.floor(windowWidth/blockWidth) * blockWidth);
      if (position < 0){
        position = 0;
      } else {
        position;
      }
    }else{
      position = 0;
    }

    $(".slider-wrapper").animate( { scrollLeft: position }, 1000);
  });
});

