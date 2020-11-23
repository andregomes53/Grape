#language: pt

Funcionalidade: Criar perfil de usuário
Como usuário
Para que eu possa ter controle das minhas tarefas a fazer
Eu quero ter meu próprio perfil

Cenário: Usuário registrado com sucesso
Dado que estou na página de criação de usuário
Quando preencho o campo name com 'João das Neves'
E preencho o campo email com "joao_neves@email.com"
E o campo senha com "correct horse battery staple" e o campo confirmar_senha com "correct horse battery staple"
E clico em Registrar
Então as informações do usuário deverão ter sido salvas no banco de dados

Cenário: Erro em registrar usuário - sem nome
Dado que estou na página de criação de usuário
Quando deixo o campo name vazio
E clico em Registrar
Então deverei ver a mensagem de erro "O campo nome deve ser preenchido"

Cenário: Erro em registrar usuário - sem email
Dado que estou na página de criação de usuário
Quando deixo o campo email vazio
E clico em Registrar
Então deverei ver a mensagem de erro "O campo email deve ser preenchido"

Cenário: Erro em registrar usuário - email inválido
Dado que estou na página de criação de usuário
Quando preencho o campo email com um email inválido
E clico em Registrar
Então deverei ver a mensagem de erro "O email informado é inválido"

Cenário: Erro em registrar usuário - sem senha
Dado que estou na página de criação de usuário
Quando deixo o campo password vazio
E clico em Registrar
Então deverei ver a mensagem de erro "Senha muito curta"

Cenário: Erro em registrar usuário - senhas não conferem
Dado que estou na página de criação de usuário
Quando preencho o campo password e o campo password_confirmation com dados diferentes
E clico em Registrar
Então deverei ver a mensagem de erro "As senhas não conferem"

Cenário: Erro em registrar usuário - senha muito fraca
Dado que estou na página de criação de usuário
Quando preencho o campo password com uma senha muito fraca
E clico em Registrar
Então deverei ver a mensagem de erro "A senha informada é muito fraca"

Cenário: Erro em registrar usuário - senha muito curta
Dado que estou na página de criação de usuário
Quando preencho o campo password com uma senha muito curta
E clico em Registrar
Então deverei ver a mensagem de erro "Senha muito curta"

Cenário: Erro em registrar usuário - senha muito longa
Dado que estou na página de criação de usuário
Quando preencho o campo password com uma senha muito longa
E clico em Registrar
Então deverei ver a mensagem de erro "Senha muito longa"

@usuario_duble
Cenário: Erro em registrar usuário - Usuário já logado
Dado que estou logado
E que estou na página de criação de usuário
Então deverei ser redirecionado para página de boards
