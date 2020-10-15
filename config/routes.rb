Rails.application.routes.draw do
  resources :tarefa
  root 'tarefa#new'

  # get 'tarefa/delete', controller: 'tarefa', action: 'delete'
  #match 'deleteTarefa/destroy', controller: 'tarefa', action: 'destroy', :via => 'get'
  get 'deletarTarefa', to: 'tarefa#destroy'
  post 'deletarTarefa', to: 'tarefa#deleteTask'
end
