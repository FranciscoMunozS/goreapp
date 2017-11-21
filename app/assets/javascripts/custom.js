$(document).ready(function () {
  $('.ui.sidebar').sidebar('attach events', '#sidebutton');
});

$(document).ready(function () {
  $('#due-date').calendar({
    type: 'date',
    monthFirst: false
  });
  $('#devolution_date').calendar({
    type: 'date',
    monthFirst: false
  });
  $('#income_date').calendar({
    type: 'date',
    monthFirst: false
  });

  $('.ui.dropdown').dropdown();

  $('.ui.checkbox').checkbox();

  $('.special.cards .image').dimmer({
    on: 'hover'
  });

});

$(document).ready(function () {
  setTimeout(function () {
    $('.alert').fadeOut("slow", function () {
      $(this).remove();
    })
  }, 2500);
})