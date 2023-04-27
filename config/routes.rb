Rails.application.routes.draw do
 
  root  "home#index"

  namespace :admin do
    #usuarios
    get '/users', to: 'user#index', as: 'users'
    get '/users/create', to: 'user#create', as: 'users_create'
    post '/users/store', to: 'user#store', as: 'users_store'
    get '/users/edit/:id', to: 'user#edit', as: 'users_edit'
    post '/users/update/:id', to: 'user#update', as: 'users_update'
    get '/users/delete/:id', to: 'user#delete', as: 'users_delete'
  end
  
end
