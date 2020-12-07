Before('@usuario_duble_para_admin') do
    @user = User.new(id:15, name:"Jorge" ,email:"jorge_neves@email.com", password:"correct horse battery staple", password_confirmation:"correct horse battery staple")
    @user.save
end

Dado('que estou na página de listagem de usuários') do
    visit 'users'
    log(page.html)
end
  
Então('devo ver todos usuários cadastrados no banco de dados') do
    expect(page).to have_content("Jorge")
end