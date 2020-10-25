#language: pt 

@tarefa_duble
Funcionalidade: Alterar tarefa
Como usuário 
Para que eu possa alterar minhas tarefas a fazer
Eu quero alterar uma tarefa do banco de dados

Cenário: Tarefa alterada com sucesso
Dado que estou na minha página de tarefas
Quando altero qualquer campo de uma tarefa
E clico em salvar
Então ela deve ter sido alterada no banco de dados
E deverei ver a tarefa alterada no registro de tarefas