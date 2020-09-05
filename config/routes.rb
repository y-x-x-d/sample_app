Rails.application.routes.draw do
  root 'static_pages#home'
  #  root 'application#hello'
  
  
  get '/help',  to:'static_pages#help'
  # => staticpages#help
  
  get '/about',  to:'static_pages#about'
  #ルーティングにともなったURLが使えるようになる
  
  get '/contact',  to:'static_pages#contact'
  
  get '/signup', to:'users#new'
  # get 'users/new'
  
  resources :users
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
end
