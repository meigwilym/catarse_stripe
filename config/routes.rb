CatarseStripe::Engine.routes.draw do
  namespace :payment do
    get '/stripe/:id/review' => 'stripe#review', :as => 'review_stripe'
    post '/stripe/notifications' => 'stripe#ipn',  :as => 'ipn_stripe'
    match '/stripe/callback'          => 'stripe#callback',       :as => 'stripe_auth_callback'
    match '/stripe/:id/notifications' => 'stripe#notifications',  :as => 'notifications_stripe'
    match '/stripe/:id/pay'           => 'stripe#pay',            :as => 'pay_stripe'
    match '/stripe/:id/success'       => 'stripe#success',        :as => 'success_stripe'
    match '/stripe/:id/cancel'        => 'stripe#cancel',         :as => 'cancel_stripe'
    match '/stripe/:id/charge'        => 'stripe#charge',         :as => 'charge_stripe'
    match '/stripe/auth'              => 'stripe#auth',           :as => 'stripe_auth'
  end
end
