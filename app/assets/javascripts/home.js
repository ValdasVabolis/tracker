$(function() {
  var element = $('#measurement_reps');

  $('.add-5, .add-10').click(function() {
    var increment = $(this).data('increment-value');
    element.prop('value', parseInt(element.prop('value')) + increment);
  });
});
