            #language: pt

            Funcionalidade: Tela de login
            Como cliente do Portal EBAC-SOP
            Quero fazer me autenticar na plataforme
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação do portal EBAC

            Cenário: Atenticação válida
            Quando eu digitar o usuário "teste@teste.com.br"
            E a senha "senha1234"
            Então deve exibir a mensagem de boas vindas "Olá Teste"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "ajhhsjdakjsjd@teste.com.br"
            E a senha "senha1234"
            Então deve exibir a mensagem de alerta "Usuário inexistente"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "teste@teste.com.br"
            E a senha "errrouuuuu"
            Então deve exibir a mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario              | senha       | mensagem    |
            | "teste@teste.com.br" | "senha1234" | "Olá Teste" |
            | "joao@teste.com.br"  | "senha1234" | "Olá Joao"  |
            | "maria@teste.com.br" | "senha1234" | "Olá Maria" |
            | "jose@teste.com.br"  | "senha1234" | "Olá Jose"  |