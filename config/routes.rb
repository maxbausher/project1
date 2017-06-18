Rails.application.routes.draw do

  root to: 'welcome#index'

  get '/login' => 'session#new'

  post '/login' => 'session#create'

  delete '/login' => 'session#destroy'

  resources :users
  resources :contacts


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
