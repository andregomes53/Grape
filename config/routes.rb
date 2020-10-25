Rails.application.routes.draw do
  resources :tasks
  root to: 'pages#home'
end
