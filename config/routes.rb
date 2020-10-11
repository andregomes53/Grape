Rails.application.routes.draw do
  resources :tarefa
  root 'tarefa#new'
end
