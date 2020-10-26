Dado('que estou na página de criação de usuário') do
  visit "users/new"
end

Quando('preencho o campo name com {string}') do |string|
  fill_in 'user[name]', :with => string
end

Quando('o campo email com {string}') do |string|
  fill_in 'user[email]', :with => string
end

Quando('o campo senha com {string} e o campo confirmar_senha com {string}') do |string, string2|
  fill_in 'user[password]', :with => string
  fill_in 'user[password_confirmation]', :with => string
end

Quando('clico em Registrar') do
  click_on 'Registrar'
end

Então('as informações do usuário deverão ter sido salvas no banco de dados') do
  user = User.order("id").last
  expect(user.name).to eq('João das Neves')
  expect(user.email).to eq('joao_neves@email.com')
  expect(user.password).to eq('Jo45Ness89')
end

Quando('deixo o campo name vazio') do
	fill_in 'user[name]', :with => ""
end

Quando('deixo o campo email vazio') do
  fill_in 'user[email]', :with => ""
end

Quando('preencho o campo email com um email inválido') do
  fill_in 'user[email]', :with => "email_invalido"
end

Quando('deixo o campo password vazio') do
  fill_in 'user[password]', :with => ""
end

Quando('preencho o campo password e o campo password_confirmation com dados diferentes') do
  fill_in 'user[name]', :with => "João das Neves"
  fill_in 'user[email]', :with => "joao_neves@email.com"
  fill_in 'user[password]', :with => "Jo54Ness89"
  fill_in 'user[password_confirmation]', :with => "Jo45Ness98"
end

Quando('preencho o campo password com uma senha muito fraca') do
  fill_in 'user[name]', :with => "João das Neves"
  fill_in 'user[email]', :with => "joao_neves@email.com"
  fill_in 'user[password]', :with => "12345678"
   fill_in 'user[password_confirmation]', :with => "12345678"
end

Quando('preencho o campo password com uma senha com menos oito caracteres') do
  fill_in 'user[password]', :with => "senha"
end

Quando('preencho o campo password com uma senha com mais de quinze caracteres') do
  fill_in 'user[password]', :with => "senhamuitolonga1"
end

Quando('preencho o campo password com uma senha que contém um caracter inválido') do
  fill_in 'user[password]', :with => "senha$123"
end