Before('@board_duble') do
  Board.new(id:1,name:"Cucumber").save
end

Quando('preencho o campo nome') do
  fill_in :board_name, :with => "Novo quadro"
end

E ('clico em criar quadro') do
  click_on "Criar quadro"
end

Então('ele deve ser criado no banco de dados') do
  board = Board.find_by_name("Novo quadro")
  expect(board.name).to eq('Novo quadro')
end

Então('deverei ver a pagina daquele quadro') do
  expect(current_path).to eq("/boards/1")
end

Dado('que estou na página de criação de quadro') do
  visit "boards/new"
end

Quando('preencho o campo nome com vazio') do
  fill_in :board_name, :with => ''
end

Então('deverei ver a mensagem de erro de campo vazio') do
  expect(page).to have_content("Preencha o nome do quadro")
end


Dado('que estou na página de listagem de quadros') do
  visit "/boards"
end

Quando('clico no botão de excluir de um quadro') do
  expect(Board.exists?(id:1)).to be true
  click_on "Excluir"
end

Então('o quadro deve ser removido do banco de dados') do
  expect(Board.exists?(id:1)).to be false
end

Então('deverei ver a página de listagem sem o quadro excluído') do
  expect(page).not_to have_content("Cucumber")
end

Dado('que estou logado') do
  visit 'sessions/new'
  fill_in "session[email]", :with => "joao_neves@email.com"
  fill_in "session[password]", :with => "Jo45Ness89"
  click_on 'Entrar'
end

Dado('não estou logado') do
  log("Sign in page not visited")
end

Então('deverei ser redirecionado para página de login') do
  expect(page).to have_content("Faça login para entrar")
end
