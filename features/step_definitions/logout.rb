Dado('clico no botão Encerrar sessão') do
  click_on "Log out"
end

Então('minha sessão no site deve ter sido finalizada') do
  visit "boards/new"
  expect(page).to have_content("Faça login para entrar")
end
