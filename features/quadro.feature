#language: pt

Funcionalidade: Criar um quadro
  Como usuário
  Para que possa separar tarefas por contextos
  Eu quero criar mais de um quadro

  Cenário: Quadro criado com sucesso a partir da homepage
    Dado que eu estou na página inicial
    Quando preencho o campo nome
    E clico em criar quadro
    Então ele deve ser criado no banco de dados
    E deverei ver a pagina daquele quadro

  Cenario: Quadro criado com sucesso a partir da página de criação
    Dado que estou na página de criação de quadro
    Quando preencho o campo nome
    E clico em criar quadro
    Então ele deve ser criado no banco de dados
    E deverei ver a pagina daquele quadro

  Cenário: Erro em criar quadro - nome vazio
    Dado que estou na página de criação de quadro
    Quando preencho o campo nome com vazio
    E clico em criar quadro
    Então deverei ver a mensagem de erro de campo vazio

  @board_duble
  Cenário: Remover quadro com sucesso
    Dado que estou na página de listagem de quadros
    Quando clico no botão de excluir de um quadro
    Então o quadro deve ser removido do banco de dados
    E deverei ver a página de listagem sem o quadro excluido
