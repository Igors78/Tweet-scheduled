Rails.application.routes.draw do
  root 'main#index'
  get 'about-us', to: 'about#index', as: :about
end
