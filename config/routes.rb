Rails.application.routes.draw do
  resources :contact_models
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Definindo a rota de onde e para onde sera executado a função, colocando o nome do controller e o nome
  #da ação/função

  root to: "static_pages#index"

  get 'sobre', to: 'static_pages#sobre'
  get 'contato', to: 'static_pages#contato'

end
