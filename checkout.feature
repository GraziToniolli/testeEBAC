#language: pt

Funcionalidade: Tela de Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto:
Dado que eu finalize a compra pelo portal EBAC-SHOP

Cenário: Checkout válido
Quando eu clicar em concluir a compra
Então devo preencher os dados obrigatórios "Nome+Sobrenome+País+Endereço+Cidade+Cep+Telefone+Email"
E deve exibir a mensagem de sucesso "Compra realizada com sucesso"

Cenário: Checkout invalido
Quando devo preencher os dados obrigatórios "Nome++País+Endereço+Cidade+Cep++Email"
Então deve aparecer a mensagem de alerta "Favor preencher todos os itens obrigatórios"

Cenário: Checkout com e-mail valido
Quando eu concluir a venda com um e-mail válido "teste@teste.com.br"
Então deve permitir continuar a compra

Cenário: Checkout com e-mail invalido
Quando eu concluir a venda com um e-mail ináválido "teste@teste"
Então deve exibir a mensagem de alerta "Favor digitar um e-mail válido"

Esquema do Cenário: Finalizar a compra
Quando eu finalizar a compra 
Então aparecer a tela para preencher os <dados> e <e-mail>
E então deve exibir a <mensagem> de sucesso

Exemplos:
| dados              | e-mail       | mensagem    |
| "teste@teste.com.br" | "senha1234" | "Olá Teste" |
| "joao@teste.com.br"  | "senha1234" | "Olá Joao"  |
| "maria@teste.com.br" | "senha1234" | "Olá Maria" |
| "jose@teste.com.br"  | "senha1234" | "Olá Jose"  |