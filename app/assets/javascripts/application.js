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
//= require jquery3
//= require jquery_ujs
//= require semantic-ui
//= require calendar
//= require custom_calendar
//= require_tree .

$(document).ready(function() {
  $('.ui.sidebar').sidebar('attach events', '#sidebutton');
});

$(document).ready(function() {
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
  
});

$(document).ready(function () {
  setTimeout(function () {
    $('.alert').fadeOut("slow", function () {
      $(this).remove();
    })
  }, 2500);
})