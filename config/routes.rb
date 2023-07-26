Rails.application.routes.draw do
  get 'tenant/create'
  get 'resources/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

      resources :users
      resources :tenant_users
      resources :tenants do
        resources :resources
      end


end
