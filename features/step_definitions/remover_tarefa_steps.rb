
Before('@tarefa_duble') do
  Board.new(id:1,name:"Cucumber").save
  @task = Task.new(id:10,title:"Cucumber",deadline:"Ontem",user_id:10, board_id:1)
  @task_2 = Task.new(id:11,title:"Tarefa2",deadline:"Hoje",user_id:10, board_id:1)
  @task.save
  @task_2.save  
end

Dado('que estou na página de listagem de tarefas') do
  visit 'tasks'
end

Quando('clico no remover de uma tarefa') do
  click_on('Remover Tarefa', match: :first)
end

Então('ela deve ter sido excluída no banco de dados') do
  expect(Task.exists?(id:1)).to be false
end

Então('não deverei vê-la no registro de tarefas') do
  expect(page).not_to have_content("fazer tarefa de matematica")
end