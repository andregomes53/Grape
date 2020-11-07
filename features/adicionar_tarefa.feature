#language: pt
  @board_duble_adicionar_tarefa
Funcionalidade: Adicionar tarefa
  Como usuário
  Para que eu possa registrar minhas tarefas a fazer
  Eu quero colocar uma tarefa no banco de dados

  Cenário: Tarefa adicionada com sucesso
    Dado que estou na página de registro de tarefas
    Quando preencho o campo 'task_title' com 'Nova tarefa'
    #E preencho o campo 'task_deadline' com '@amanha'
    E preencho o campo 'task_board_id' com '1'
    E clico em adicionar
    Então ela deve ter sido salvo no banco de dados
    E deverei ver a tarefa no registro de tarefas

  Cenário: Erro em adicionar tarefa - sem titulo
    Dado que estou na página de registro de tarefas
    Quando deixo o campo 'task_title' vazio
    E clico em adicionar
    Então deverei ver a mensagem de erro "O nome da tarefa deve ser informado"

  Cenário: Erro em adicionar tarefa - data inválida
    Dado que estou na página de registro de tarefas
    Quando preencho o campo 'task_deadline' com uma data anterior a data atual
    E clico em adicionar
    Então deverei ver a mensagem de erro "A data informada é inválida"