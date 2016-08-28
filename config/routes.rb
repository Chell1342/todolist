Rails.application.routes.draw do

  #get 'sessions/new'

  #get 'sessions/create'

  #get 'sessions/destroy'

  resources :todos

  root 'welcome#index'
  get 'welcome/index'

  resources :users, only: [:new, :create]

  get '/signup', to: 'sessions#new'   #获取登陆表路由
  post '/login', to: 'sessions#create'   #登录路由
  delete '/login', to: 'session#destroy'  #登出路由

  #get 'users/new'

  #get 'users/create'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
