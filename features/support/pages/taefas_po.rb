class TarefasPage 
    include Capybara::DSL
    
    def painel
        find('#task-board')
    end

    def buscar_tr(nome)
        find('#tasks tbody tr', text: nome)
    end

    def alerta
        find('.alert-warn').text
    end
    def cadastrar(nome, data_f)
        find('#insert-button').click

        within('#add-task') do
            fill_in 'title', with: nome
            fill_in 'dueDate', with: data_f
            click_on 'Cadastrar'   
        end   
    end
end

#click_button : para elementos button (Botão)
#click_link : para elementos a (Link)
#click_on : para elementos span, div, table entre outros (pega todos)
# fill_in : apenas para ID e Name
