Rails.application.routes.draw do
  get 'session/new'

  get 'session/create'

  get 'session/destroy'

  get 'contacts/new'

  get 'contacts/create'

  get 'contacts/index'

  get 'contacts/show'

  get 'contacts/edit'

  get 'contacts/update'

  get 'contacts/destroy'

  get 'users/new'

  get 'users/create'

  get 'users/index'

  get 'users/show'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
