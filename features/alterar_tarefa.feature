#language: pt 

@usuario_duble
@tarefa_duble

Funcionalidade: Alterar tarefa
Como usuário 
Para que eu possa alterar minhas tarefas a fazer
Eu quero alterar uma tarefa do banco de dados

Cenário: Tarefa alterada com sucesso
Dado que estou na página de uma tarefa
Quando clico em Editar
Então deverei ser redirecionado para a página de editar tarefa
Quando altero algum campo
E clico em Editar Tarefa
Então ela deve ter sido alterada no banco de dados
E deverei ver a tarefa alterada no registro de tarefas 
