# frozen_string_literal: true

Rails.application.routes.draw do
  root 'main#index'

  get 'password', to: 'passwords#edit', as: :edit_password
  patch 'password', to: 'passwords#update'
  

  get 'signup', to: 'registrations#new'
  post 'signup', to: 'registrations#create'

  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'


  delete 'logout', to: 'sessions#destroy'

  get 'about-us', to: 'about#index', as: :about
end
