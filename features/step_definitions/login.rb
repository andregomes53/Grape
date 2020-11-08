Dado('que estou na página de login') do
  visit 'sessions/new'
  #log(page.html)
end

Quando('preencho o campo login_senha com {string}') do |string|
  fill_in 'session[password]', :with => string
end

Quando('preencho o campo login_email com {string}') do |string|
  fill_in 'session[email]', :with => string
end

Quando('clico no botão Entrar') do
  click_on 'Entrar'
end

Então('deverei ser redirecionado para minhas tarefas') do
  expect(page).to have_content("joao_neves@email.com")
end

Quando('preencho o campo email e o campo senha com informações que não coincidem na base de dados') do
  fill_in 'session[email]', :with => "joao_neves@email.com"
  fill_in 'session[password]', :with => "SenhaErrada123"
end

Quando('preencho o campo login_email com um email inválido') do
  fill_in 'session[email]', :with => "email_invalido"
end

Quando('preencho o campo email com um email não registrado na base de dados') do
  fill_in 'session[email]', :with => "daniela_targariana@email.com"
end

Quando('preencho o campo senha com um senha não registrado na base de dados') do
  fill_in 'session[password]', :with => "senha_errada"
end
