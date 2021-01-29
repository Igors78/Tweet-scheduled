# frozen_string_literal: true

Rails.application.routes.draw do
  root 'main#index'

  get 'signup', to: 'registrations#new'
  post 'signup', to: 'registrations#create'
  get 'about-us', to: 'about#index', as: :about
end
