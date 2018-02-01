$('#showLeft').click(function() {
  $('.menu-left').toggleClass('left-open');
});

$('#showRight').click(function() {
  $('.menu-right').toggleClass('right-open');
});

$('#showTop').click(function() {
  $('.menu-top').toggleClass('top-open');
});

$('#showBottom').click(function() {
  $('.menu-bottom').toggleClass('bottom-open');
});

$('.backBtn').click(function() {
  $('.menu-mobile').removeClass('top-open bottom-open right-open left-open pushleft-open pushright-open');
  $('body').removeClass('push-toleft push-toright');
});

$('body').addClass('push');

$('#showLeftPush').click(function () {
  $('body').toggleClass('push-toleft');
  $('.push-left').toggleClass('pushleft-open');
});

$('#showRightPush').click(function () {
  $('body').toggleClass('push-toright');
  $('.push-right').toggleClass('pushright-open');
});
