Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      get '/handbags', to: 'handbags#index'
      post '/handbags/create', to: 'handbags#create'
      delete '/handbag/delete', to: 'handbags#destroy'
    end
  end
end
