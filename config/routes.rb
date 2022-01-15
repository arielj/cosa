Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get :new_application, to: "candidates#new_application"
  post :apply, to: "candidates#apply"

  namespace :cosa do
    root to: "dashboard#index"
    resources :candidates

    get "login", to: "sessions#new", as: "login"
    delete "logout", to: "sessions#destroy", as: "logout"
    match "/auth/:provider/callback", to: "sessions#create", via: [:post, :get]
  end
end
