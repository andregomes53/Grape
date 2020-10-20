Before('@tarefa_duble') do
  puts "teste"
end

Dado('que estou na minha página de tarefas') do
  visit 'users/1'
end

Quando('altero qualquer campo de uma tarefa') do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('clico em salvar') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('ela deve ter sido alterada no banco de dados') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('deverei ver a tarefa alterada no registro de tarefas') do
  pending # Write code here that turns the phrase above into concrete actions
end