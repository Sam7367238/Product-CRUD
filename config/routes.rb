Rails.application.routes.draw do
  resources :products
  patch "/products/:id/add-to-cart", to: "products#add_to_cart", as: "add_to_cart"
  patch "/products/:id/remove-from-cart", to: "products#remove_from_cart", as: "remove_from_cart"
  get "/cart", to: "cart#index", as: "cart"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "products#index"
end
