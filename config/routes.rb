Rails.application.routes.draw do
  # where app starts
  root 'people#index'

  #resources takes the place of all the commented out codes below
    resources :people do
      resources :cars, shallow: true #allows me to get routes that dont have to be associated with people
    end
  end
  #get '/people', to: 'people#index'
  #get '/people/:id', to: 'people#show'
  #get '/people/new', to: 'people#new'
  #get '/people/:id/edit', to: 'people#edit'

  #post '/people', to: 'people#create'

  #put '/people/:id', to: 'people#update'

  #delete '/people/:id', to: 'people#destroy'
