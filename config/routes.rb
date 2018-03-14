Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root "main#index"
  root "request_appointments#index"

  resources :request_appointments, only: :create
  get "request_appointments", to: "request_appointments#activation", as: :activation

  get "*path", to: "request_appointments#index"
end
