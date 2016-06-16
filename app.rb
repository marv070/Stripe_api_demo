require 'sinatra'
require 'sinatra/reloader' if development?
require 'stripe'

Stripe.api_key = 'sk_test_***' # Paste your secret key here. https://dashboard.stripe.com/account/apikeys

get '/' do
  erb :index
end

get '/somethingelse' do
  "This is another page"
end

post '/charge' do
  # Get the credit card details submitted by the form
  token = params[:stripeToken]
  email = params[:stripeEmail]
  # Create the charge on Stripe's servers - this will charge the user's card
  begin
    charge = Stripe::Charge.create(
      :amount => 2000, # amount in cents, again
      :currency => "usd",
      :source => token,
      :description => email
    )
    "Successfully charged"
  rescue Stripe::CardError => e
    "Your card was declined" # The card has been declined, use 4100000000000019 to test in Checkout
  end
end
