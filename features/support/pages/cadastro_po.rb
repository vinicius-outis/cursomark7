class CadastroPage 
    include Capybara::DSL
    def acessa_registro
        visit '/register'
    end

    def mensagem_alerta
        find('form div[class=panel-body]')
    end

    def mensagem_bv
        find('h3[class*=m-t-xs]')
    end

    def cadastrar_dados(nome, email, senha)
        find('#register_name').set nome
        find('#register_email').set email
        find('input[type=password]').set senha
        find('button[type=submit]').click
    end
end
