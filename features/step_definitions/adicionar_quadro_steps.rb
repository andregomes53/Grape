Dado('que eu estou na página inicial') do
  visit ''
end

Quando('preencho o nome do quadro') do
  fill_in :board_name, :with => "Novo quadro"
end

E ('clico em criar quadro') do
  click_on "Criar quadro"
end

Então('ele deve ser criado no banco de dados') do
  quadro = Board.findByUserAndTitle()
  expect(tarefa.title).to eq('Nova tarefa')
end

Então('deverei ver a pagina daquele quadro') do
  pending # Write code here that turns the phrase above into concrete actions
end

Dado('que estou na página do usuário') do
  pending # Write code here that turns the phrase above into concrete actions
end
