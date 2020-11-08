#language: pt

@usuario_duble
@tres_tarefas

Funcionalidade: Filtragem de tarefas por categorias
Como usuário
Para que eu possa categorizar as tarefas
Eu quero filtrar as tarefas de uma certa categoria

Cenário: Filtragem parcial
Dado que estou na página de listagem de tarefas
Quando preencho o campo 'task_filter' com 'A'
E clico em filtrar
Então deverei ver 'A tarefa'
E deverei ver 'B tarefa'
Mas não deverei ver 'C tarefa'

Cenário: Filtragem completa
Dado que estou na página de listagem de tarefas
Quando preencho o campo 'task_filter' com 'B categoria'
E clico em filtrar
Então deverei ver 'C tarefa'
Mas não deverei ver 'A tarefa'
E não deverei ver 'B tarefa'

