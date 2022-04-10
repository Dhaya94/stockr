Rails.application.routes.draw do      
  root :to => 'pages#home'
  resources:users, :only => [:new, :create, :index]
  resources:stocks, :only => [:index, :show]
  resources:watchlists

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
