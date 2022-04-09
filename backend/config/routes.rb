Rails.application.routes.draw do
  
  namespace :api do
    resources :novels, only: [:index, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # GraphQL
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  end

  post '/graphql', to: 'graphql#execute'
  #get '/search', to: "search#search"
  #get '/ranking', to: 'ranking#ranking' 
  get '/delete', to: 'dbdelete#dbdelete' 
end
