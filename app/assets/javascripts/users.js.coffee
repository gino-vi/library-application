# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  loaded_model = $('#user_city :selected').text()
  if loaded_model.length < 1
    $('#user_city').parent().hide()
  models = $('#user_city').html()
  $('#user_state').change ->
    make = $('#user_state :selected').text()
    escaped_make = make.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(models).filter("optgroup[label='#{escaped_make}']").html()
    if options
      $('#user_city').html(options)
      $('#user_city').parent().show()
    else
      $('#user_city').empty()
      $('#user_city').parent().hide()

  $("#user_state").trigger "change"