#language: pt

@usuario_duble

Funcionalidade: Página de informações
Como usuário,
quero que na página inicial,
Tenha um botão de "Minhas informações",
De modo que quando eu clico eu seja redirecionado para uma página de Minhas informações,
Que tenha todas as minhas informações cadastrais listadas.

Cenário: Acessado com sucesso
Dado que eu estou na página inicial
E clico no botão Minhas informações
Então deverei estar na página de informações
E todas as minhas informações devem estar listadas

Cenário: Acesso inválido - sem informações
Dado que eu estou na página inicial
E clico no botão Minhas informações
E não vejo minhas informações
Então deverei ver a mensagem de erro "Não foi possível carregar suas informações."

Cenário: Acesso inválido - Usuário não logado
Quando tento acessar a página de minhas informações
E não estou logado
Então deverei ser redirecionado para a página de Login
