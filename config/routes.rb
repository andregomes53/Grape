Rails.application.routes.draw do
  resources :tasks
  resources :boards
  resources :users
  root to: 'pages#home'
end
