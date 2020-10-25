Rails.application.routes.draw do
  resources :tasks
  resources :boards
  root to: 'pages#home'
end
