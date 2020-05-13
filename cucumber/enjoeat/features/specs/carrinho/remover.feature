#language: pt
@burger_house  
Funcionalidade: Remover itens
    Pra que eu possa manter meu carrinho apenar com itens desejados
    Sendo um cliente que desisitiu de um ou mais produtos 
    Posso remover itens do meu carrinho


    Contexto: Itens no carrinho 
        Dado que eu tenho os seguintes produtos no carrinho:
            | nome           | preco    | quantidade |
            | Classic Burger | R$ 18,50 | 1          |
            | Batatas Fritas | R$ 5,50  | 1          |
            | Refrigerante   | R$ 4,50  | 1          |


        Esquema do Cenario: Remover itens

            Quando eu removo somente o <item>
            Então o valor total deve ser <total>

        Exemplos: 
        | item | total      |
        | 0    | "R$ 10,00" |
        | 1    | "R$ 23,00" |
        | 2    | "R$ 24,00" |
        
        Cenario:  Remover todos os itens
        
            Quando eu removo todos os itens
            Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"

   
        Cenario: Limpar carrinho 

            Quando eu limpo meu carrinho 
            Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"


