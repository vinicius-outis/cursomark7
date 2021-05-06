#language: pt

Funcionalidade: Meu Perfil 
    Para que eu possa cadastrar e gerenciar minhas tarefas 
    Sendo um Usuário 
    Posso acessar o sitema com meu email e senha previamentes cadastrados
    
    Contexto: Home
        Dado que acesso a pagina de login
        
        @sprint1 
        Cenário: Usuário autenticado
            Quando realizar login com "teste@testez.com" e "senha"
            Então deverá exibir a mensagem de boas vindas "Bem vindo"
        
        Esquema do Cenário: Tentativa de Login
            Quando realizar login com "<email>" e "<senha>"
            Então deverá exibir a mensagem de alerta "<mensagem_saida>"

            Exemplos:
            | email                      | senha     | mensagem_saida             |
            | teste@testez.com           | 1234321   | Senha incorreta.           |
            | teste@testez.com           | 1234321   | Usuário não cadastrado.    |
            |                            | 1234321   | Email nao preenchido       |
            | teste@testez.com           |           | Senha nao preenchida       |
