Dado('que estou autenticado com {string} e {string}') do |email, senha|
    @login_page.acessa
    @login_page.logar(email, senha)
end

Dado('acesso meu perfil') do
    @side.acessa_perfil
end

Quando('completo o meu cadastro {string} e {string}') do |empresa, cargo|
    @perfil_page.completa_cadastro(empresa, cargo)
end

Então('deverá exibir a mensagem de atualização cadastral {string}') do |mensagem|
    expect(@perfil_page.alerta).to have_content mensagem
end