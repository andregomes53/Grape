#language: pt

@tarefa_duble

Funcionalidade: Remover tarefa
Como usuário
Para que eu possa retirar uma tarefa do registro de tarefas
Eu quero remover uma tarefa do banco de dados

Cenário: Tarefa removida com sucesso
Dado que estou na página de remover tarefas
Quando preencho o campo id com '1'
E clico em remover
Então ela deve ter sido excluída no banco de dados
#E não deverei vê-la no registro de tarefas

Cenário: Erro em remover tarefa - sem id
Dado que estou na página de remover tarefas
Quando deixo o campo 'id' vazio
E clico em remover
Então deverei ver a mensagem de erro "O id da tarefa deve ser informado"

Cenário: Erro em remover tarefa - tarefa não existe
Dado que estou na página de remover tarefas
Quando preencho o campo 'id' com um id de uma tarefa que não consta no banco de dados
E clico em remover
Então deverei ver a mensagem de erro "Tarefa já foi excluída ou ainda não foi criada"
