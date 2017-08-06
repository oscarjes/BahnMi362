Rails.application.routes.draw do
  resources :sections do
    resources :food_items
  end
  resources :line_items
  resources :orders do
    member do
      get "thanks"
    end
  end

  root "home#index"
  get "contact" => "home#contact"
  get "menu" => "sections#index"
  get "cart" => "carts#show"
  get "order" => "orders#show"
  post "carts/add"
end