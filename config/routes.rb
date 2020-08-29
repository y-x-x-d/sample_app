Rails.application.routes.draw do
  root 'static_pages#home'
  #  root 'application#hello'
  
  get 'static_pages/home'
  # => staticpages#home
  
  get 'static_pages/help'
  # => staticpages#help
  
  get 'static_pages/about'
  #ルーティングにともなったURLが使えるようになる
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
end
