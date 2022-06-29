            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página do produto

            Cenário: Selecionar cor do produto
            Quando eu inserir um produto no carrinho
            E aparecer a opção de cor "azul"
            Então deve solicitar o tamanho

            Cenário: Selecionar tamanho do produto
            Quando eu inserir um produto no carrinho
            E aparecer a opção de tamanho "M"
            Então deve permitir incluir o produto.

            Cenário: Inserir quantidade acima do permitido do produto 
            Quando eu inserir a quantidade "11" unidades de um mesmo produto no carrinho
            Então deve aparecer mensagem de alerta "Você excedeu a quantidade máxima de 10 itens"

            Cenário: Inserir quantidade permitida do produto 
            Quando eu inserir a quantidade "09" unidades de um mesmo produto no carrinho
            Então deve atualizar a quantidade e o item no carrinho

            Esquema do Cenário: Inserir produtos no carrinho
            Quando eu selecionar o item
            E selecionar a <cor>
            Então deve solicitar o <tamanho> e <quantidade> do produto

            Exemplos:
            | cor        | tamanho | quantidade |
            | "azul"     | "P"     | "5"        |
            | "vermelho" | "G"     | "3"        |
            | "preto"    | "M"     | "1"        |