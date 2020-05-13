#language: pt



@burger_house
Funcionalidade: Adicionar ao carrinho 
    Para que eu possa finalizar uma compra
    Sendo um cliente que já decidiu o que irá comer
    Posso adicionar itens ao meu carrinho
    
    @smoke
    Cenario: Adicionar 1 unidade
        Dado que o produto desejado é "Classic Burger"
        E o valor do produto é "R$ 18,50"
        Quando eu adiciono 1 unidade(s)
        Então deve ser adicionado 1 unidade(s) deste item
        E o valor total deve ser de "R$ 18,50"

 
    Cenario: Adicionar 2 unidades
        Dado que o produto desejado é "Batatas Fritas"
        E o valor do produto é "R$ 5,50"
        Quando eu adiciono 2 unidade(s)
        Então deve ser adicionado 2 unidade(s) deste item
        E o valor total deve ser de "R$ 11,00"


   
    Cenario: Adicionar varios itens 
        Dado que os produtos desejador são:
            | nome           | preco    | quantidade |
            | Classic Burger | R$ 18,50 | 2          |
            | Batatas Fritas | R$ 5,50  | 1          |
            | Refrigerante   | R$ 4,50  | 2          |
        Quando eu adiciono todos os itens
        Então vejo todos os itens no carrinho
        E o valor total deve ser de "R$ 51,50"
