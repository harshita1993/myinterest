Rails.application.routes.draw do
  
  devise_for :users

  resources :boards

  resources :pins do
  	#resources :comments
  	member do
  	 post '/repost' => 'pins#repost'
  	end

  	member do
  	  post '/likes' => 'pins#like'
  end
end


  
 get ':username' => 'users#show',as: 'user'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
