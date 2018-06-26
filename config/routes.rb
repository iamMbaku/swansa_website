Rails.application.routes.draw do
  devise_for :students
	#get '/home' => 'pages#index'
	root to: 'pages#index'
end
