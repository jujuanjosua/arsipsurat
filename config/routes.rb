Rails.application.routes.draw do
  resources :surats
  get 'scanpage/scan'
  devise_for :models
  devise_for :users
	root 'surats#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

