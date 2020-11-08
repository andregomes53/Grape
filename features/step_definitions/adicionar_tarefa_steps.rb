Before('@board_duble_adicionar_tarefa') do
  @board = Board.new(id:1,name:"Cucumber")
  @board.save
end

Before('@usuario_duble') do
  @user = User.new(id:10, name:"Joao" ,email:"joao_neves@email.com", password:"Jo45Ness89", password_confirmation:"Jo45Ness89")
  @user.save
end

Dado('que estou na página de registro de tarefas') do
  visit 'tasks/new'
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
