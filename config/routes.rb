Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get  '/login' => 'sessions#new', :as => :login
  post '/login' => 'sessions#create', :as => :login
end
