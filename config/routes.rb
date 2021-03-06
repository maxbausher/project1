Rails.application.routes.draw do

  get 'settings/show'

  get 'settings/edit'

  get 'settings/update'

  get 'settings/destroy'

  root to: 'welcome#index'

  get '/login' => 'session#new'

  post '/login' => 'session#create'

  delete '/login' => 'session#destroy'

  resources :users, :contacts



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
