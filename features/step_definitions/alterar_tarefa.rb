Before('@tarefa_duble') do
    Board.new(id:10,name:"Cucumber").save
    @task = Task.new(id:11,title:"Cucumber",deadline:"Ontem",user_id:10, board_id:10)

end

Dado('que estou na página de uma tarefa') do
    visit 'tasks/1'
    #log(page.html)
end
  
Quando('clico em Editar') do
    click_on('Editar')
end

Então('deverei ser redirecionado para a página de editar tarefa') do
    get 'tasks/1/edit'
    #log(page.html)
end

Quando('altero algum campo') do
    fill_in :task_title, :with => 'NovoNome'
end

Quando('clico em Editar Tarefa') do
    click_on('Editar tarefa')
end

Então('ela deve ter sido alterada no banco de dados') do
    expect(Task.exists?(title:'fazer tarefa de matematica')).to be false
end

E('deverei ver a tarefa alterada no registro de tarefas')do
    visit '/tasks'
    expect(page).not_to have_content("fazer tarefa de matematica")
end