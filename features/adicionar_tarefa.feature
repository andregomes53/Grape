#language: pt 

Funcionalidade: Adicionar tarefa
Como usuário 
Para que eu possa registrar minhas tarefas a fazer
Eu quero colocar uma tarefa no banco de dados

Cenário: Tarefa adicionada com sucesso
Dado que estou na página de registro de tarefas
Quando clico em adicionar
E preencho o campo 'titulo'
E clico e salvar
Então ele deve ter sido salvo no banco de dados
E deverei ver a tarefa no registro de tarefas

Cenário: Erro em adicionar tarefa - sem titulo
Dado que estou na página registro de tarefas
Quando clico em adicionar
E deixo o campo 'titulo' vazio
E clico em salvar
Então deverei ver a mensagem de erro "O nome da tarefa deve ser informado"

Cenário: Erro em adicionar tarefa - data inválida
Dado que estou na página de registro de tarefas
Quando clico em adicionar
Quando preencho o campo data
E coloco uma data anterior a data atual
Então deverei ver a mensagem de erro "A data informada é inválida"

Cenário: Erro em adicionar tarefa - Arquivo muito grande
Dado que estou na página de registro de tarefas
Quando clico em adicionar
Quando envio um arquivo anexo
E o arquivo tem tamanho maior que 50MB
Então deverei ver a mensagem de erro "O tamanho do arquivo muito longo (máx 50MB)"