Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get :new_application, to: "candidates#new_application"
  post :apply, to: "candidates#apply"
end
