Rails.application.routes.draw do
  root to: 'pages#home'
  resources :planets, only: [:show] do
    resources :aliens, only: [:new, :create]
  end
  resources :aliens, only: [:destroy] do
    resources :memberships, only: [:new, :create]
  end
end

# As a user I can see one planet's aliens
# planets#show
# get '/planets/:id'
#
# As a user I can add an alien to a planet
# aliens#new aliens#create
# get '/planets/:planet_id/aliens/new'
# post '/planets/:planet_id/aliens'
#
# As a user I can "remove" an alien
# aliens#destroy
# delete '/aliens/:id'

# Add a membership (aka an alliance) to an alien
# memberships new/create
# get 'aliens/:alien_id/memberships/new'
