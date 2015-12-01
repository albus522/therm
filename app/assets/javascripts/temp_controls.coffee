$ () ->
  change = new Event("change")
  $("#set_temp_temp").on "change", ->
    decrease = (this.value <= this.getAttribute("min")) ? "disabled" : false
    $(".decrease-temp").attr("disabled", decrease)

    increase = (this.value >= this.getAttribute("max")) ? "disabled" : false
    $(".increase-temp").attr("disabled", increase)

  $(".increase-temp").on "click touchend", (e) ->
    field = document.getElementById("set_temp_temp")
    field.value = parseInt(field.value, 10) + 1
    field.dispatchEvent(change)

  $(".decrease-temp").on "click touchend", (e) ->
    field = document.getElementById("set_temp_temp")
    field.value = parseInt(field.value, 10) - 1
    field.dispatchEvent(change)
