Rails.application.routes.draw do
  devise_for :swansa_reg, :controllers => { :passwords => " swansa_reg/passwords" , :confirmations => "swansa_reg/confirmations"}
  devise_scope :swansa_reg do
  	get 'signup', to: 'devise/regestration#new'
  	get 'signin', to: 'devise/session#new'
  	get 'signout', to: 'devise/session#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
