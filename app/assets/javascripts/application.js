//= require rails-ujs
//= require jquery3
//= require jquery_ujs
//= require popper
//= require bootstrap-sprockets
//= require bootstrap-datepicker
//= require bootstrap-datepicker/locales/bootstrap-datepicker.es.js
//= require_tree .

$(document).ready(function(){
  $('.datepicker').datepicker({
    language: 'es'
  });
});

$(function () {
  $("#guarantee_guarantee_type").change(function () {
    var guarantee_type = $(this).val();
    if (guarantee_type != "VALE_VISTA") {
      document.getElementById("guarantee_due_date").disabled = false;
    }
    else {
      document.getElementById("guarantee_due_date").disabled = true;
    }
  });
});

$(document).ready(function () {
  setTimeout(function () {
    $('.alert').fadeOut("slow", function () {
      $(this).remove();
    })
  }, 2500);
})
