Rails.application.routes.draw do
  resources :key_issues, only: [:index, :show]
  resources :user_petitions, only: [:index, :show]
  resources :petitions, only: [:index, :show, :create, :update, :destroy] do 
    member do
      get 'congressional_member_petitions'
    end
  end
  resources :users, only: [:index, :show, :create, :update, :destroy]
  resources :congressional_members, only: [:index, :show]

  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
