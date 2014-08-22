Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'species#index'})
  match('species', {:via => :get, :to => 'species#index'})
  match('species/new', {:via => :get, :to => 'species#new'})
  match('species', {:via => :post, :to => 'species#create'})
  match('species/:id', {:via => :get, :to => 'species#show'})
  match('species/:id/edit', {:via => :get, :to => 'species#edit'})
  match('species/:id', {:via => [:patch, :put], :to => 'species#update'})
  match('species/:id/destroy', {:via => :delete, :to => 'species#destroy'})
  match('species/:id/sightings/new', {:via => :get, :to => 'sightings#new'})
  match('species/:id/sightings', {:via => :post, :to => 'sightings#create'})
  match('species/:id/sightings/:id/edit', {:via => :get, :to => 'sightings#edit'})
  match('species/:id/sightings/:id', {:via => [:patch, :put], :to => 'sightings#update'})
  match('species/:id/sightings/:id/edit/destroy', {:via => :get, :to => 'sightings#destroy'})
end