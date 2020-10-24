Rails.application.routes.draw do
  resources :tasks
  root 'tasks#new'

  get 'deletarTarefa', to: 'tarefa#destroy'
  post 'deletarTarefa', to: 'tarefa#deleteTask'

end
