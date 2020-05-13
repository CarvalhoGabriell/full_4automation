#language: pt

Funcionalidade: Login
    Para que eu possa gerenciar os filmes do catálogo Ninjaflix
    Sendo um usuário preveamente cadastrado
    Posso acessar o sistema com o meu email e senha

    @login_happy
    Cenario: Acesso 
        Quando eu faço o login com "tony@stark.com" e "qa123456"
        Então devo ser autenticado
        E devo ver "Tony Stark" na área logada
    
    @login_hapless
    Esquema do Cenario: Login sem sucesso
        Quando eu faço o login com <email> e <senha>
        Então não devo ser autenticado
        E devo ver a mensagem de alerta <texto>

        Exemplos:
            | email            | senha    | texto                          |
            | "tony@stark.com" | "aa152"  | "Usuário e/ou senha inválidos" |
            | "eu@gabiru.com"  | "aa152"  | "Usuário e/ou senha inválidos" |
            | ""               | "ww5599" | "Opps. Cadê o email?"          |
            | "error@nil"      | ""       | "Opps. Cadê a senha?"          |
                    