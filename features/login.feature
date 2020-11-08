#language: pt

@usuario_duble

Funcionalidade: Login de usuário
Como usuário,
quero uma página de "Login" com um botão "Entrar",
De modo de que depois que eu clico,
Eu entro em um sessão particular no sistema com minhas informações pessoais relacionadas.

Cenário: Logado com sucesso
Dado que estou na página de login
Quando preencho o campo login_email com "joao_neves@email.com"
E preencho o campo login_senha com "Jo45Ness89"
E clico no botão Entrar
Então deverei ser redirecionado para minhas tarefas

Cenário: Erro ao logar - email inválido
Dado que estou na página de login
Quando preencho o campo login_email com um email inválido
E clico no botão Entrar
Então deverei ver a mensagem de erro "Suas credenciais de login não coincidem com uma conta em nosso sistema."

Cenário: Erro ao logar - email não registrado
Dado que estou na página de login
Quando preencho o campo email com um email não registrado na base de dados
E clico no botão Entrar
Então deverei ver a mensagem de erro "Suas credenciais de login não coincidem com uma conta em nosso sistema."

Cenário: Erro ao logar - senha inválida
Dado que estou na página de login
Quando preencho o campo senha com um senha não registrado na base de dados
E clico no botão Entrar
Então deverei ver a mensagem de erro "Suas credenciais de login não coincidem com uma conta em nosso sistema."

Cenário: Erro ao logar - email e senha não coincidem
Dado que estou na página de login
Quando preencho o campo email e o campo senha com informações que não coincidem na base de dados
E clico no botão Entrar
Então deverei ver a mensagem de erro "Suas credenciais de login não coincidem com uma conta em nosso sistema."
