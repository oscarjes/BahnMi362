Rails.application.routes.draw do
  resources :sections do
    resources :food_items
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  get "contact" => "home#contact"
  get "menu" => "sections#index"
end