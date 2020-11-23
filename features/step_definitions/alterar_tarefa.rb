
Before('@usuario_duble') do
    @user = User.new(id:11, name:"Joao" ,email:"joao_neves@email.com", password:"correct horse battery staple", password_confirmation:"correct horse battery staple")
    @user.save
end

Before('@tarefa_duble') do
    Board.new(id:10,name:"Cucumber").save
    Task.new(id:15,title:"Tarefa 15",deadline:"Ontem",user_id:11, board_id:10).save
end

Dado('que estou na página de uma tarefa') do
    visit 'tasks/15'
    #log(page.html)
end
  
Quando('clico em Editar') do
    click_on('Editar')
end

Então('deverei ser redirecionado para a página de editar tarefa') do
    get 'tasks/15/edit'
    #log(page.html)
end

Quando('altero algum campo') do
    fill_in 'task[title]', :with => 'NovoNome'
end

Quando('clico em Editar Tarefa') do
    click_on('Editar tarefa')
end

Então('ela deve ter sido alterada no banco de dados') do
    #log(page.html)
    expect(Task.exists?(title:'Tarefa 15')).to be false
end

E('deverei ver a tarefa alterada no registro de tarefas')do
    visit '/tasks'
    expect(page).not_to have_content("Tarefa 15")
end