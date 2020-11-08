#language: pt

Funcionalidade: Criar perfil de usuário
Como usuário
Para que eu possa ter controle das minhas tarefas a fazer
Eu quero ter meu próprio perfil

Cenário: Usuário registrado com sucesso
Dado que estou na página de criação de usuário
Quando preencho o campo name com 'João das Neves'
E preencho o campo email com "joao_neves@email.com"
E o campo senha com "Jo45Ness89" e o campo confirmar_senha com "Jo45Ness89"
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
Então deverei ver a mensagem de erro "O campo nome deve ser preenchido"

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
Quando preencho o campo password com uma senha com menos oito caracteres
E clico em Registrar
Então deverei ver a mensagem de erro "Senha muito curta (mínimo 8 caracteres)"

Cenário: Erro em registrar usuário - senha muito longa
Dado que estou na página de criação de usuário
Quando preencho o campo password com uma senha com mais de quinze caracteres
E clico em Registrar
Então deverei ver a mensagem de erro "Senha muito longa (máximo 15 caracteres)"

Cenário: Erro em registrar usuário - senha inválida (caracter inválido)
Dado que estou na página de criação de usuário
Quando preencho o campo password com uma senha que contém um caracter inválido
E clico em Registrar
Então deverei ver a mensagem de erro "Apenas número e letras são aceitos"
