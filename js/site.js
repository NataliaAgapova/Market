$(document).ready(function() {

$('.slider').slick({
	dots: true,
	fade: true,
	pauseOnHover: false,
	centerMode: true,
  });

$(document).on("click", ".item img", function() {

    $('.slider').slick('slickGoTo',(this.id-1), false);
    $('#open_modal').toggle();
});

  $(document).on("click", ".close", function() {

    $('#open_modal').toggle();
    $('.slider').slick('slickPause');
  });








});
