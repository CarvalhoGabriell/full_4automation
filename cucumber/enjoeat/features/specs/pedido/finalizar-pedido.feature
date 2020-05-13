#language: pt 


@ice_cream
Funcionalidade: Finalizar pedido
    Para que eu possa receber o pedido no meu endereço
    Sendo um usuário que fechou o carrinho com itens 
    Posso finalizar o meu pedido

    @smoke
    Cenario: Finalizar pedido com Cartão Refeição

        Dado que eu fechei o pedido com os itens: 
            | quantidade | nome            | descricao                                                    | subtotal |
            | 1          | Mega Sunday     | Sunday com várias bolas de sorvete a sua escolha             | R$ 21,50 |
            | 3          | Sorvete Simples | Clássico sorvete de rua onde todos os sabores são idênticos. | R$ 4,50  |
        E informei meus dados de entrega: 
            | nome        | Gabriel Carvalho     |
            | email       | gabiru@eu.io         |
            | rua         | Estrada dos Galdinos |
            | numero      | 250                  |
            | complemento | APTO 13, BL 1        |
        Quando finalizo o pedido com "Cartão Refeição"
        Então devo ver a seguinte mensagem:
        """
        Seu pedido foi recebido pelo restaurante. Prepare a mesa que a comida está chegando!
        """