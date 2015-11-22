$ () ->
  $(".increase-temp").on "click touchend", (e) ->
    e.preventDefault()

    field = $("#set_temp_temp")
    if parseInt(field.val()) < parseInt(field.attr("max"))
      field.val(parseInt(field.val()) + 1)

  $(".decrease-temp").on "click touchend", (e) ->
    e.preventDefault()

    field = $("#set_temp_temp")
    if parseInt(field.val()) > parseInt(field.attr("min"))
      field.val(parseInt(field.val()) - 1)
