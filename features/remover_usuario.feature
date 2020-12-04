#language: pt

@usuario_duble
Funcionalidade: Remover usuário
Como usuário
Para que eu possa sair do serviço
Eu quero excluir minha conta

Cenário: Usuário excluído
Dado que estou logado
E que estou na página do meu perfil
Quando clico em Excluir conta
Então o usuário não deverá estar no banco de dados

