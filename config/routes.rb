Rails.application.routes.draw do
  # get 'sessions/new'
 get    '/login',   to: 'sessions#new'
 post   '/login',   to: 'sessions#create'
 delete '/logout',  to: 'sessions#destroy'
 # get 'welcome/index'

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :users
 resources :dashboards
 root 'welcome#index'
end
