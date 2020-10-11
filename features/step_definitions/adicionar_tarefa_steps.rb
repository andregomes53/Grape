Dado('que estou na página de registro de tarefas') do
  visit 'tarefa/new'
end

Quando('preencho o campo {string} com {string}') do |string, string2|
  fill_in string, :with => string2
end

Quando('clico em adicionar') do
  click_on 'Adicionar nova tarefa'
end

Então('ela deve ter sido salvo no banco de dados') do
  tarefa = Task.order("id").last
  expect(tarefa.title).to eq('Nova tarefa')
end

Então('deverei ver a tarefa no registro de tarefas') do
  expect(page).to have_content('Nova tarefa')
end

Quando('deixo o campo {string} vazio') do |string|
  fill_in string, :with => ""
end

Então('deverei ver a mensagem de erro {string}') do |string|
  expect(page).to have_content(string)
end

Quando('preencho o campo {string} com uma data anterior a data atual') do |string|
  fill_in(string, :with => "2020-10-10T00:00:00")
end

Quando('anexo um arquivo de tamanho maior que 50MB') do
  pending # Write code here that turns the phrase above into concrete actions
end
