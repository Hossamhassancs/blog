Rails.application.routes.draw do
  resources :users do
    resources :blogs
  end
  
  post '/auth/login', to: 'authentication#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
