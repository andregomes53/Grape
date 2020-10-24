
Before('@tarefa_duble') do
  @task = Task.new(id:1,title:"Cucumber",deadline:"Ontem")
  @task.save
end

Dado('que estou na página de remover tarefas') do
  visit 'deletarTarefa'
end

Quando('preencho o campo id com {string}') do |string|
  fill_in("deleteTask[id]", with: string)
end

Quando('clico em remover') do 
  click_on "Remover tarefa"
end

Então('ela deve ter sido excluída no banco de dados') do
  expect(Task.exists?(id:1)).to be false
end

#Então('não deverei vê-la no registro de tarefas') do
#  expect(page).not_to have_content("id")
#end

Quando('deixo o campo id vazio') do 
  fill_in("deleteTask[id]", with: "")
end

Quando('preencho o campo {string} com um id de uma tarefa que não consta no banco de dados') do |string|
  #Select id from database
  expect("id").to eq(nil)
end



