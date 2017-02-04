Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]

  get '/protected_information', to: 'protected_information#index'
  get '/', to: 'test_page#index'
  
  get '/create_user', to: 'test_page#create_test_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
