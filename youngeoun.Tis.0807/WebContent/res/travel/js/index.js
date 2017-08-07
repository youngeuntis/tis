var popupid = $('#login');
$("#launch").click(function() {
  $('.overlay').show();
  popupid.show();
});
$("#closepopup").click(function() {
  $('.overlay').hide();
  popupid.hide();
});