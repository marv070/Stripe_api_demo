require 'sinatra'
require 'stripe'

set :publishable_key, 'pk_test_Z1gfhNPlVZWZ0MzRZigwECWN'
set :secret_key, 'sk_test_Vfkn4yYppHb5XBCaLEcGARhf'
Stripe.api_key = settings.secret_key


get '/' do
  erb :index
end

post '/charge' do
  # Amount in cents
  @amount = 10000

  customer = Stripe::Customer.create(
    :email => 'customer@example.com',
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :amount      => @amount,
    :description => 'Sinatra Charge',
    :currency    => 'usd',
    :customer    => customer.id
  )

  erb :charge
end

error Stripe::CardError do
  env['sinatra.error'].message
end





