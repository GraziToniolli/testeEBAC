            #language: pt

            Funcionalidade: Tela de Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu finalize a compra pelo portal EBAC-SHOP

            Cenário: Checkout válido
            Quando eu clicar em concluir a compra
            E devo preencher os "dados obrigatórios"
            Então deve exibir a mensagem de sucesso "Compra realizada com sucesso"

            Cenário: Checkout invalido
            Quando eu deixar de preencher qualquer "dado obrigatório"
            Então deve aparecer a mensagem de alerta "Favor preencher todos os itens obrigatórios"

            Cenário: Checkout com e-mail valido
            Quando eu concluir a venda com um e-mail válido "teste@teste.com.br"
            Então deve permitir finalizar a compra

            Cenário: Checkout com e-mail invalido
            Quando eu concluir a venda com um e-mail ináválido
            Então deve exibir uma mensagem de alerta "Favor digitar um e-mail válido"

            Esquema do Cenário: Finalizando a compra
            Quando eu finalizar a compra
            E aparecer a tela para confirmar o <login> e <e-mail>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | login                | e-mail      | mensagem    |
            | "teste@teste.com.br" | "senha1234" | "Olá Teste" |
            | "joao@teste.com.br"  | "senha1234" | "Olá Joao"  |
            | "maria@teste.com.br" | "senha1234" | "Olá Maria" |
            | "jose@teste.com.br"  | "senha1234" | "Olá Jose"  |