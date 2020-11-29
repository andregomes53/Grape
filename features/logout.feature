#language: pt

@usuario_duble

Funcionalidade: Log-out de usuário
Como usuário,
quero que na página de "Boards" haja um botão "Log-out",
De modo de que depois que eu clico,
Eu encerro minha sessão particular no sistema e seja redirecionado para página de Login.

Cenário: Log-out efetuado com sucesso
Dado que estou logado
E que estou na página de listagem de quadros
E clico no botão Encerrar sessão
Então minha sessão no site deve ter sido finalizada
E deverei ser redirecionado para página de login
