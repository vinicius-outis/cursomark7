#language: pt

Funcionalidade: Login 
    Para que eu possa manter meus dados atualizados 
    Sendo um Usuário 
    Posso completar o meu cadastro do perfil
    
    @logout
    Esquema do Cenário: Atualizar Perfil
        Dado que estou autenticado com "<email>" e "<senha>"
        E acesso meu perfil
        Quando completo o meu cadastro "<empresa>" e "<cargo>"
        Então deverá exibir a mensagem de atualização cadastral "Perfil atualizado com sucesso."

        Exemplos:
            | email             | senha  | empresa      | cargo      |
            | teste@testez.com  | 123321 | Google       | Developer  |
            | teste@testez.com  | 123321 | Linkedin     | CTO        |
            | teste@testez.com  | 123321 | Compasso UOL | QA         |
            | teste@testez.com  | 123321 | Microsoft    | CEO        |
            | teste@testez.com  | 123321 | Facebook     | Estagiario |