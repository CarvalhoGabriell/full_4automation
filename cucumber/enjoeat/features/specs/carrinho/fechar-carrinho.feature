#language: pt

@ice_cream
Funcionalidade: Fechar Carrinho 
    Para que eu possa ter certeza de que vou receber e pagar tudo certinho
    Sendo um usuário que adicionou itens no carrinho 
    Posso  fechar meu carrinho 
    
    @total
    Cenario: Valor total e frete

        Dado que eu adicionei os seguintens itens no carrinho :
            | quantidade | nome            | descricao                                                    | subtotal |
            | 1          | Mega Sunday     | Sunday com várias bolas de sorvete a sua escolha             | R$ 21,50 |
            | 3          | Sorvete Simples | Clássico sorvete de rua onde todos os sabores são idênticos. | R$ 4,50  |
        Quando eu fecho meu carrinho
        Então o valor total de itens deve ser igual a "R$ 26,00"
        E o valor de frete deve ser igual a "R$ 8,00"
        E o valor total da compra deve ser igual a "R$ 34,00"

