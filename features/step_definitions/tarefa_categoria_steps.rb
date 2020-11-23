Então('ela deve ter sido salva no banco de dados') do
  tarefa = Task.order("id").last
  expect(tarefa.title).to eq('Nova tarefa')
  expect(tarefa.category).to eq('Categoria arbitrária')
end

Então('deverei ver a tarefa no registro de tarefas com a categoria {string}') do |string|
  expect(page).to have_content('Nova tarefa')
  expect(page).to have_content(string)
end

