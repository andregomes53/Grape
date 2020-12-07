#language: pt

@usuario_duble_para_admin

Funcionalidade: Alterar informações do usuário
Como administrador
Para que eu possa alterar as informações de um usuário
Eu quero um botão para alterar as informações de um usuário no banco de dados

Cenário: Usuário alterada com sucesso
Dado que estou logado
E que estou na página de listagem de usuários
Quando clico em Editar
Então deverei ser redirecionado para a página de editar usuário
Quando altero algum campo
E clico em Editar Usuário
Então ele deve ter sido alterada no banco de dados
E deverei ver o usuário alterado na listagem de usuários