window.showFlash = (message) ->
  $(".flash").html(message)

$(document).ajaxComplete (event,request, settings) ->
  if request.status == 500
    $(".flash").html("<div class='alert fade in alert-error'><button class='close' data-dismiss='alert'>×</button>Something went wrong</div>")
