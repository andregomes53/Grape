#language: pt

@usuario_duble
@tarefa_duble
Funcionalidade: Remover tarefa
Como usuário
Para que eu possa retirar uma tarefa do registro de tarefas
Eu quero remover uma tarefa do banco de dados

Cenário: Tarefa removida com sucesso
Dado que estou logado
E que estou na página de listagem de tarefas
Quando clico no remover de uma tarefa
Então ela deve ter sido excluída no banco de dados
E não deverei vê-la no registro de tarefas
