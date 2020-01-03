Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Definindo a rota de onde e para onde sera executado a função, colocando o nome do controller e o nome
  #da ação/função

  root to: "static_pages#index"

  get 'sobre', to: 'static_pages#sobre'
  get 'contato', to: 'static_pages#contato'

    resources :contact_models

    #Esse usuario só tera acesso a essa rota para criar
    resources :users, only: [:new, :create]

end
