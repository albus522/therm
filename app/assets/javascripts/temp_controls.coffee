$ () ->
  $(".increase-temp").on "click touchend", (e) ->
    e.preventDefault()

    $("#set_temp_temp").val(parseInt($("#set_temp_temp").val()) + 1)

  $(".decrease-temp").on "click touchend", (e) ->
    e.preventDefault()

    $("#set_temp_temp").val(parseInt($("#set_temp_temp").val()) - 1)
