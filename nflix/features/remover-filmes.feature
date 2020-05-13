#language: pt

@login
Funcionalidade: Remover filmes
    Para que eu possa manter o catálogo atualizado
    Sendo um gestor de catálogoque encontrou um título cancelado/indesejado ou que não tem uma boa aceitação pelo público
    Posso remover esse item

    Cenario: Confirmar filme 
        Dado que "Dbz" está no catálogo
        Quando eu solicito a exclusão
        E eu confirmo a solicitação
        Então este item deve ser removido do catálogo

    
    @rm_movie
    Cenario: Cancelar Exclusão

        Dado que "10_coisas" está no catálogo
        Quando eu solicito a exclusão
        Mas cancelo a solicitação
        Então este item deve permanecer no catálogo
