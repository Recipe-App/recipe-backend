Rails.application.routes.draw do
  resources :saved_recipes,  defaults: {format: :json}
  resources :pantry_items
  post 'user_token' => 'user_token#create'
  resources :users,  defaults: {format: :json}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
