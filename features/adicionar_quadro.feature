#language: pt

Funcionalidade: Criar um quadro
  Como usuário
  Para que possa separar tarefas por contextos
  Eu quero criar mais de um quadro

  Cenário:
    Dado que eu estou na página inicial
    Quando preencho o nome do quadro
    E clico em criar quadro
    Então ele deve ser criado no banco de dados
    E deverei ver a pagina daquele quadro

  Cenario:
    Dado que estou na página do usuário
    Quando preencho o nome do quadro
    E clico em criar quadro
    Então ele deve ser criado no banco de dados
    E deverei ver a pagina daquele quadro

