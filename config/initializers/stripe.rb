Rails.configuration.stripe = {
  publishable_key: 'pk_test_51KxnVhA0uIQ7R28yhLD8zd6FglUmvCOyvsaXX0boaL8vmOvc88sGyIOXOF4CdMH7cUrOLfKyBuW4cZXzixTs7uwO00gB9HsQon',
  secret_key: 'sk_test_51KxnVhA0uIQ7R28yuAxAoGO6Y4TXDdcVvoEfEWCOmDjNztjFSGgPHgfQ0g4R3Twgzj4wrqNi1HO2aV5DpyIlJaFs00Igr3PyEW'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
