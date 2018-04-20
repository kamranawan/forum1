// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery

//= require_tree .


$(function() {
  $(".img-w").each(function() {
    $(this).wrap("<div class='img-c'></div>")
    let imgSrc = $(this).find("img").attr("src");
     $(this).css('background-image', 'url(' + imgSrc + ')');
  })
            
  
  $(".img-c").click(function() {
    let w = $(this).outerWidth()
    let h = $(this).outerHeight()
    let x = $(this).offset().left
    let y = $(this).offset().top
    
    
    $(".active").not($(this)).remove()
    let copy = $(this).clone();
    copy.insertAfter($(this)).height(h).width(w).delay(500).addClass("active")
    $(".active").css('top', y - 8);
    $(".active").css('left', x - 8);
    
      setTimeout(function() {
    copy.addClass("positioned")
  }, 0)
    
  }) 
  
  

  
})

$(document).on("click", ".img-c.active", function() {
  let copy = $(this)
  copy.removeClass("positioned active").addClass("postactive")
  setTimeout(function() {
    copy.remove();
  }, 500)
})





let $slides, interval, $selectors, $btns, currentIndex, nextIndex;

let cycle = index => {
	let $currentSlide, $nextSlide, $currentSelector, $nextSelector;

	nextIndex = index !== undefined ? index : nextIndex;

	$currentSlide = $($slides.get(currentIndex));
	$currentSelector = $($selectors.get(currentIndex));

	$nextSlide = $($slides.get(nextIndex));
	$nextSelector = $($selectors.get(nextIndex));

	$currentSlide.removeClass("active").css("z-index", "0");

	$nextSlide.addClass("active").css("z-index", "1");

	$currentSelector.removeClass("current");
	$nextSelector.addClass("current");

	currentIndex = index !== undefined
		? nextIndex
		: currentIndex < $slides.length - 1 
			? currentIndex + 1 
			: 0;
	
	nextIndex = currentIndex + 1 < $slides.length ? currentIndex + 1 : 0;
};

$(() => {
	currentIndex = 0;
	nextIndex = 1;

	$slides = $(".slide");
	$selectors = $(".selector");
	$btns = $(".btn");

	$slides.first().addClass("active");
	$selectors.first().addClass("current");

	interval = window.setInterval(cycle, 6000);

	$selectors.on("click", e => {
		let target = $selectors.index(e.target);
		if (target !== currentIndex) {
			window.clearInterval(interval);
			cycle(target);
			interval = window.setInterval(cycle, 6000);
		}
	});

	$btns.on("click", e => {
		window.clearInterval(interval);
		if ($(e.target).hasClass("prev")) {
			let target = currentIndex > 0 ? currentIndex - 1 : $slides.length - 1;
			cycle(target);
		} else if ($(e.target).hasClass("next")) {
			cycle();
		}
		interval = window.setInterval(cycle, 6000);
	});
});



$(function(){
	$('.b-slogan__button-play').magnificPopup({
		//delegate: '.b-slogan__url', // child items selector, by clicking on it popup will open
		type: 'iframe',
		tLoading: 'Loading video #%curr%...',
		modal:false,
		markup: '<div class="mfp-iframe-scaler">'+
            '<iframe class="mfp-iframe" frameborder="0" allowfullscreen></iframe>'+
          '</div>', 
		callbacks:{
			open: function(){
				$('.mfp-close').remove();//удаление старой кнопки
				$('<button title="" type="button" class="mfp-close"></button>').appendTo('.mfp-container');
				//var content = $(".mfp-iframe");
			}
		}
	});
});