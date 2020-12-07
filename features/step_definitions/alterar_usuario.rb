Dado('que estou na página de um usuário') do
    visit 'users/15'
end

Quando('clico em Editar conta') do
    click_on('Editar conta')
end

Então('deverei ser redirecionado para a página de editar usuário') do
    expect(page).to have_content("E-mail")
end
  
Quando('clico em Editar Usuário') do
    click_on('Editar')
end
  
Quando('altero algum campo do usuario') do
    fill_in 'user[name]', :with => 'NovoNome'
end
  
Então('ele deve ter sido alterada no banco de dados') do
    expect(User.exists?(name:'Jorge')).to be false
end
  
Então('deverei ver o usuário alterado na listagem de usuários') do
    visit '/users'
    expect(page).not_to have_content("Jorge")
end