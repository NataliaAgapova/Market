$(document).ready(function() {

$('.slider').slick({
	autoplay: true,
	autoplaySpeed: 2000,
	dots: true,
	fade: true,
	pauseOnHover: false
  });

$(document).on("click", ".item img", function() {

    $('.slider').slick('slickGoTo',(this.id-1), false);
    $('#open_modal').toggle();
    $('.slider').slick('slickPlay');
});

  $(document).on("click", ".close", function() {

    $('#open_modal').toggle();
    $('.slider').slick('slickPause');
  });








});
