$ () ->
  change = new Event("change")
  $("#set_temp_temp").on "change", ->
    decrease = (this.value <= this.getAttribute("min")) ? "disabled" : false
    $(".decrease-temp").attr("disabled", decrease)

    increase = (this.value >= this.getAttribute("max")) ? "disabled" : false
    $(".increase-temp").attr("disabled", increase)

  $(document).on "click touchend", ".increase-temp:not([disabled=disabled])", (e) ->
    e.preventDefault()
    field = document.getElementById("set_temp_temp")
    field.value = parseInt(field.value, 10) + 1
    field.dispatchEvent(change)

  $(document).on "click touchend", ".decrease-temp:not([disabled=disabled])",  (e) ->
    e.preventDefault()
    field = document.getElementById("set_temp_temp")
    field.value = parseInt(field.value, 10) - 1
    field.dispatchEvent(change)
