#language: pt

Funcionalidade: Categoria de tarefa
Como usuário
Para que eu possa categorizar as tarefas
Eu quero adicionar uma categoria à uma tarefa

Cenário: Categoria adicionada normalmente
Dado que estou na página de registro de tarefas
Quando preencho o campo 'task_title' com 'Nova tarefa'
E preencho o campo 'task_category' com 'Categoria arbitrária'
E clico em adicionar
Então ela deve ter sido salva no banco de dados
E deverei ver a tarefa no registro de tarefas com a categoria 'Categoria arbitrária'

