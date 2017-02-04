Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]

  get '/protected_information', to: 'protected_information#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
