Rails.application.routes.draw do
  
  # get 'dishes', to: 'dishes#index'
  # get '/dishes/:id', to: 'dishes#show'

  resources :dishes, only: [:index, :show]


  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
