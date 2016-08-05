Rails.application.routes.draw do

  resources :users do 
    resources :microposts, only: [:new, :create] #nested resources
  end
  #parking 7 restful routes to this resource named users 
  resources :microposts

  root "users#index"  

  get '/fatin', to: "users#index", as:  'my_name'

end
