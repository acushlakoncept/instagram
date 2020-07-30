Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users,
    path: '',
    path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
    controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/users/:id' to 'users#show'
  resources :users, only: [:show]

  resources :posts, only: [:index, :show, :create] do
    resources :photos, only: [:create]
end
