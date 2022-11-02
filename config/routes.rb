Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index', as: 'main'
  post 'search', to: 'home#search', as: 'search'
  get 'about',to: 'home#about', as: 'about'
  get 'connect',to: 'home#connect',as: 'connect'
end
  