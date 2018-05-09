Rails.application.routes.draw do
  
  #localhost:3000/admin/dashboard/main
  #nested route
  #error_message:uninitialized constant Admin
  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end

 
  get 'about' ,to: "pages#about"

  #customer hardcode route
  get 'leadgen/advertising/landingpage/lead', to: 'pages#contact', as: 'lead' 

  resources :blogs
  #be carefull about the order.
  #get 'posts/*missing', to: 'posts#missing'
  resources :posts
  
  #globbing
  get 'posts/*missing', to: 'posts#missing'

  #:dymanic value
  get 'query/:else/:another_one', to: 'pages#something'
  get 'query/:else', to: 'pages#something'

  root to:'pages#home'

end
