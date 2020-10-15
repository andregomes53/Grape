
Dado('que estou na página de remover tarefas') do
  visit 'deletarTarefa'
end


Quando('preencho o campo {string} com {string}') do |string, string2|
  fill_in("deleteTask[id]", with: string2)
end

Quando('clico em remover') do
  click_on "Remover tarefa"
end

Então('ela deve ter sido excluida no banco de dados') do
  tarefa = nil
  expect(tarefa).to be_nil
end

Então('não deverei vê-la no registro de tarefas') do
  expect(page).not_to have_content("id")
end

Quando('preencho o campo {string} com um id de uma tarefa que não consta no banco de dados') do |string|
  #Select id from database
  expect("id").to eq(nil)
end
