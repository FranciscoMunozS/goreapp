$(document).ready(function () {
  $('.ui.sidebar').sidebar('attach events', '#sidebutton');
});

$(document).ready(function () {
  $('#due_date').calendar({
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
  var $realInputField;
  $realInputField = $('#user_avatar');
  $realInputField.change(function () {
    return $('#file-display').val($(this).val().replace(/^.*[\\\/]/, ''));
  });
  return $('#upload-btn').click(function () {
    return $realInputField.click();
  });
});

$(document).ready(function () {
  setTimeout(function () {
    $('.alert').fadeOut("slow", function () {
      $(this).remove();
    })
  }, 2500);
})
