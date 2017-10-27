# Cloud 9 - Stripe Checkout Integration Training - Ruby Sinatra

## Setting Up Cloud9
- Go to `c9.io` and log in
- Create a new workspace
  - Workspace name = `hello-stripe`
  - Clone from Git or Mercurial URL = https://github.com/tschaeff/stripe_checkout_integration_training.git
  - (everything else at defaults)


## In Cloud9
Check out the files you have in this folder, see what they have.

In the terminal (at the bottom where it says `bash`) type:
- `gem install sinatra sinatra-contrib stripe`
  - this will install the ruby libraries, called `gem`s, that we need to run our webservice with Stripe
- `ruby app.rb -o $IP -p $PORT`
  - this will run the file app.rb, and tell it to make the site available online at a location.
  - Cloud 9 has wired things up so `$IP` and `$PORT` contains what it should on their server.
- In the menu bar, click `Preview` => `Preview Running Application` and a browser pane will appear.
- After each change you make to our files:
  - save the file(s)
  - refresh the browser pane
# Stripe_api_demo
# Stripe_api_demo
# Stripe_api_demo
