#language: pt

Funcionalidade: Cardápio
    Para que eu possa decidir o que pretendo comer 
    Sendo um usuário que escolheu um restaurante
    Posso acessar o cardápio

    Contexto:  Restaurantes  
      Dado que eu acesso a lista de restaurantes
    
    @cardapio
    Cenario: Produto Disponivel
        
        Quando eu escolho o restaurante "Tasty Treats"
        Então vejo os seguintes itens disponiveis no cardápio:
            | produto                   | descricao                            | preco    |
            | Cup Cake de Choc. Branco  | Cup Cake de chocolate branco         | R$ 5,50  |
            | Bolo de Morango           | Bolo recheado e coberto com morangos | R$ 40,50 |
            | Fatia de Bolo             | Fatia de bolo de morango             | R$ 5,90  |

 
    Cenario: Carrinho vazio 
       
        Quando eu escolho o restaurante "Tasty Treats"
        Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"


