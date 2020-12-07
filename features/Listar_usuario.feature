#language: pt
@usuario_duble_para_admin
Funcionalidade: Listagem de usuários
Como administrador
Para que eu possa ter controle dos usuários do sistema
Eu quero ver todos os usuários cadastrados

Cenário: Usuários listados com sucesso
Dado que estou logado
E que estou na página de listagem de usuários
Então devo ver todos usuários cadastrados no banco de dados