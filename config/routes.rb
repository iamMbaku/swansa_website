Rails.application.routes.draw do
  resources :rooms
  devise_for :students
	#get '/home' => 'pages#index'
	root to: 'pages#index'
end
