# contem => *
# termina com => $
# começa com => ^
Before do
    @login_page = LoginPage.new
    @cadastroPage = CadastroPage.new
    @nav = Navbar.new
    @side = Sidebar.new
    @tarefas_page = TarefasPage.new
    @perfil_page = PerfilPage.new
    
    page.current_window.resize_to(1280, 800)
end

Before('@login') do

    @usuario = {email: 'guilhermel_ima@hotmail.com', senha: 'senha123'}
    @login_page.acessa
    @login_page.logar(@usuario[:email], @usuario[:senha])
end

After('@logout') do
    @nav.sair
end