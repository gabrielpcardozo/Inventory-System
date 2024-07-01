Rails.application.routes.draw do
  root "items#home"

#Resources dos Models da aplicação.
  resources :items
  resources :people

#Rotas das sessões para os logins/logouts e singup.
  #Singup
  get 'signup', to: 'registrations#new', as: 'signup'
  post 'signup', to: 'registrations#create'
  #Login
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'
  

#resources :items do
#    resources :people, only: [:index, :new, :create]
#end

#get "/index", to: "inventory#index"
#get "/:id", to: "inventory#show"
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end