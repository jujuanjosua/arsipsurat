Rails.application.routes.draw do
  get 'scanpage/scan'
  devise_for :models
  devise_for :users
	root 'scanpage#scan'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

