Rails.application.routes.draw do
  resources :sections do
    resources :food_items
  end

  root "home#index"
  get "contact" => "home#contact"
  get "menu" => "sections#index"
  get "cart" => "carts#show"
  post "carts/add"
end