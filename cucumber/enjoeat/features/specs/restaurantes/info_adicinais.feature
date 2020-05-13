#language: pt

Funcionalidade: Informaçãoes Adicionais
    Para que eu possa ver as informaçãoes Adicionais
    Sendo um usuário que escolheu um restauranrte
    Posso ver a categoria, descrição detalhada, hoarário de funcionamento

    @infos
    Cenario: Detalhes dos restaurantes

        Dado que eu acesso a lista de restaurantes
        Quando eu escolho o restaurante "Tasty Treats"
        Então eu vejo as seguintes informaçãoes adicionais:
        | categoria  | Doces                                     |
        | descricao  | A doceria com mais tradição da cidade     |  
        | horario    | Funciona de segunda à sábado, de 8h às 23h|
                