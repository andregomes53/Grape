Before('@tres_tarefas') do
  Board.new(id:1,name:"Cucumber").save
  log "A task A foi salva? " + Task.new(title: 'A tarefa', category: 'A categoria', user_id:10, board_id:1).save.to_s
  log "A task B foi salva? " + Task.new(title: 'B tarefa', category: 'A categoria', user_id:10, board_id:1).save.to_s
  log "A task C foi salva? " + Task.new(title: 'C tarefa', category: 'B categoria', user_id:10, board_id:1).save.to_s
end

Quando('clico em filtrar') do
  click_on 'Filtrar'
end

Então('deverei ver {string}') do |string|
  expect(page).to have_content(string)
end

Então('não deverei ver {string}') do |string|
  expect(page).not_to have_content(string)
end

