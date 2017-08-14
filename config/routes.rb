Rails.application.routes.draw do

  resources :songs, except: [:destroy]
  resources :artists, only: [:new, :create, :update, :show, :edit]
  resources :genres, only: [:new, :create, :update, :show, :edit]

end

