Rails.application.routes.draw do
  resources :users,  defaults: {format: :json}
  post 'user_token' => 'user_token#create'

  resources :pantry_items,  defaults: {format: :json}

  resources :saved_recipes,  defaults: {format: :json}
  post 'grocery_list' => 'grocery_list#text'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
