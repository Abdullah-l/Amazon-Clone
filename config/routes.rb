Rails.application.routes.draw do
  devise_for :users

  resources :items do
    member do
      delete :delete_image
    end
  end

  resources :users do
    member do
      delete :delete_image
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
