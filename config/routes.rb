Rails.application.routes.draw do
  root 'get_data#index'
  resources :get_data
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
