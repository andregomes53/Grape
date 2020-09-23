#language: pt 

Funcionalidade: Adicionar tarefa
Como usuário 
Para que eu possa registrar minhas tarefas a fazer
Eu quero colocar uma tarefa no banco de dados

Cenário: Tarefa adicionada com sucesso
Dado que estou na página de registro de tarefas
Quando preencho o campo 'titulo' com 'nome da nova tarefa'
E clico em adicionar
Então ele deve ter sido salvo no banco de dados
E deverei ver a tarefa no registro de tarefas

Cenário: Erro em adicionar tarefa - sem titulo
Dado que estou na página de registro de tarefas
Quando deixo o campo 'titulo' vazio
E clico em adicionar
Então deverei ver a mensagem de erro "O nome da tarefa deve ser informado"

Cenário: Erro em adicionar tarefa - data inválida
Dado que estou na página de registro de tarefas
Quando preencho o campo 'data' com uma data anterior a data atual
E clico em adicionar
Então deverei ver a mensagem de erro "A data informada é inválida"

Cenário: Erro em adicionar tarefa - Arquivo muito grande
Dado que estou na página de registro de tarefas
Quando anexo um arquivo de tamanho maior que 50MB
E clico em adicionar
Então deverei ver a mensagem de erro "Tamanho do arquivo muito grande (máx 50MB)"