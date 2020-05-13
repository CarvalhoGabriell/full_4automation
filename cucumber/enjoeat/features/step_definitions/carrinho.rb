

Dado("que o produto desejado é {string}") do |produto|
     @produto_nome = produto
end

Dado("o valor do produto é {string}") do |valor|
     @produto_valor = valor
end

Quando("eu adiciono {int} unidade\\(s)") do |quantidade|
    quantidade.times do
        @menu_restaurant_page.add_to_cart(@produto_nome)
    end
end



Então("deve ser adicionado {int} unidade\\(s) deste item") do |quantidade|
   expect(@menu_restaurant_page.cart.box).to have_text "(#{quantidade}x) #{@produto_nome}"
end

  
Então("o valor total deve ser de {string}") do |valor_total|
    expect(@menu_restaurant_page.cart.total.text).to eql valor_total
end

#LISTA DE PRODUTOS 

Dado("que os produtos desejador são:") do |table|
    @products_list = table.hashes
end

Quando("eu adiciono todos os itens") do
    @products_list.each do |p|
        p["quantidade"].to_i.times do
            @menu_restaurant_page.add_to_cart(p["nome"])
        end
    end
    
end

Então("vejo todos os itens no carrinho") do
    
    @products_list.each do |p|
        expect(@menu_restaurant_page.cart.box).to have_text "(#{p["quantidade"]}x) #{p["nome"]}"
    end

end

# REMOVER ITENS DO CARRINHO

Dado("que eu tenho os seguintes produtos no carrinho:") do |table|
     
    @products_list = table.hashes
     steps %{
        Quando eu adiciono todos os itens
     }
end



Quando("eu removo somente o {int}") do |item|
   
    @menu_restaurant_page.cart.remove_item(item)
   
end

Quando("eu removo todos os itens") do
   
    @products_list.each_with_index do |value, idx|
        @menu_restaurant_page.cart.remove_item(idx)
    end
end

Quando("eu limpo meu carrinho") do
     @menu_restaurant_page.cart.clean
end

Então("o valor total deve ser {string}") do |valor_total|
   
    total =  @menu_restaurant_page.cart.box.find("tr", text: "Total:").find("td")
    expect(total.text).to eql valor_total
end



Então("vejo a seguinte mensagem no carrinho {string}") do |mensagem|
   
    expect(@menu_restaurant_page.cart.box).to have_text mensagem 
end

 #VALOR TOTAL DA COMPRA COM FRETE, PARA REALIZAR O PAGAMENTO............

Dado("que eu adicionei os seguintens itens no carrinho :") do |table|
    @products_list = table.hashes 
    steps %{
       Quando eu adiciono todos os itens
    }
end

Quando("eu fecho meu carrinho") do
    @menu_restaurant_page.cart.close 
end

Então("o valor total de itens deve ser igual a {string}") do |total_itens|
   expect(
       @order_page.cost_shipping[0]
   ).to have_text total_itens
end

Então("o valor de frete deve ser igual a {string}") do |shipping|
    expect(
       @order_page.cost_shipping[1]
   ).to have_text shipping
end

Então("o valor total da compra deve ser igual a {string}") do |total_compra|
    expect(
       @order_page.cost_shipping[2]
   ).to have_text total_compra
end
