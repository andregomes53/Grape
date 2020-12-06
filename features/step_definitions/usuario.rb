Dado 'que estou na página do meu perfil' do
  visit "users/10"
end

Quando 'clico em Excluir conta' do
  click_on 'Excluir conta'
end

Então 'o usuário não deverá estar no banco de dados' do
  expect(User.exists?(id: 10)).to be false
end
