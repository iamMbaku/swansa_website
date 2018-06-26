Rails.application.routes.draw do
  resources :request_rooms
  devise_for :students
	#get '/home' => 'pages#index'
	root to: 'pages#index'
end
