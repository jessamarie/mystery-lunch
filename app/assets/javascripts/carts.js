$(document).ready(function () {

  $(".get").on("click", () => {
    console.log("clicked!");
  })

  // Get cart
  $('.get-cart').on('click', () => {
    $.ajax({
      type: 'GET',
      dataType: 'json',
      url: '/cart'
    }).done((response) => {
      console.log(response)
    }).fail((response) => {
      console.log('Ajax get request failed.')
    })
  })

  console.log('ready')
  $('.row > a').on('click', function () {
    console.log('remove cart item')
    $(this).parent().hide()
  })
})
