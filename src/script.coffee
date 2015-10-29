Parse.initialize '0wZkIc6kNekDIakxZRyktsKx1O008jpSktHARDzY', 'x1NnMjHRAdZ7jzEaN7wSsqlAvKeWn3GSsL8aDzJI'

emailValidator = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/

Email = Parse.Object.extend 'Email'

thankYou = ->
  $('.contact-form').css display: 'none'
  $('.thank-you-message').css display: 'block'

displayError = ->
  console.log 'error'
  $('.error-message').css display: 'block'

saveEmail = ->
  console.log 'doing something...'
  emailAddress = $('#email').val()
  if emailValidator.test emailAddress
    email = new Email()
    email
      .save(address: emailAddress)
      .then(thankYou)
  else
    displayError()

$(document).on 'click', '#submit', saveEmail
