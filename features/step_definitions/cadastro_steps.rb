Dado('que esteja no formulário de cadastro') do
    @cadastroPage.acessa_registro
end

Quando('realizar o cadastro com  {string} {string} e {string}') do |nome, email, senha|
    @cadastroPage.cadastrar_dados(nome,email, senha)
end

Então('deverá exibir a mensagem de boas vindas {string}') do |mensagem_saida|
    expect(@cadastroPage.mensagem_bv).to have_content mensagem_saida
end

Então('deverá exibir a mensagem de alerta {string}') do |mensagem_saida|
    expect(@cadastroPage.mensagem_alerta).to have_content mensagem_saida
end