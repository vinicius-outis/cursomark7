#language: pt

Funcionalidade: Cadastro de usuários 
    Sendo um visitante 
    Posso fazer meu cadastro
    Para poder gerenciar minhas tarefas

    Contexto: Formulário
        Dado que esteja no formulário de cadastro
        
        @cenariocadastro
        Esquema do Cenário: Cadastro
            Quando realizar o cadastro com  "<nome>" "<email>" e "<senha>"
            Então deverá exibir a mensagem de boas vindas "<mensagem_saida>"

            Exemplos:
                | nome              | email                  | senha    | mensagem_saida         |
                | Teste             | teste@teste.com        | senha1   | Bem vindo              |
        
        @cenariocadastro
        Esquema do Cenário: Campos obrigatórios
            Quando realizar o cadastro com  "<nome>" "<email>" e "<senha>"
            Então deverá exibir a mensagem de alerta "<mensagem_saida>"

            Exemplos:
                | nome      | email              | senha   | mensagem_saida       |
                |           | teste@testez.com   | 1234321 | O nome é obrigatório |
                | Teste     |                    | 4321231 | Email é obrigatório. |
                | Teste     | teste@testez.com   |         | Informe a senha.     |
                