Quando('clico em remover') do
  click_on "Remover tarefa"
end

Então('ela deve ter sido excluida no banco de dados') do
  tarefa = Task.("id")
  expect(tarefa.title).to eq(nil)
end

Então('não deverei vê-la no registro de tarefas') do
  expect(page).not_to have_content("id")
end

Quando('preencho o campo {string} com um id de uma tarefa que não consta no banco de dados') do |string|
  #Select id from database
  expect(id).to eq(nil)
end
