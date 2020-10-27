
Before('@tarefa_duble') do
  @task = Task.new(id:10,title:"Cucumber",deadline:"Ontem",user_id:10)
  @task.save
end

Dado('que estou na página de listagem de tarefas') do
  visit 'tasks'
end

Quando('clico no remover de uma tarefa') do 
  click_on "Remover Tarefa"
end

Então('ela deve ter sido excluída no banco de dados') do
  expect(Task.exists?(id:10)).to be false
end

Então('não deverei vê-la no registro de tarefas') do
  expect(page).not_to have_content("Cucumber")
end