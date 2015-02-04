Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'

  devise_for :users, only: [:omniauth_callback, :session], controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  get '/users/auth/failure' => 'home#index'

end
