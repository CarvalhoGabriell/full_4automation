

Dado("que eu acesso a lista de restaurantes") do
    @restaurant_list_page.load
end

Quando("eu escolho o restaurante {string}") do |restaurante|
    @restaurant_list_page.go(restaurante)
end


Então("vejo os seguintes itens disponiveis no cardápio:") do |table|
     itens = @menu_restaurant_page.menu

     products_data = table.hashes
     products_data.each_with_index do |value, index|
        expect(itens[index]).to have_text value["produto"].upcase
        expect(itens[index]).to have_text value["descricao"]
        expect(itens[index]).to have_text value["preco"]
    end
end


Então("eu vejo as seguintes informaçãoes adicionais:") do |table|
    infos = table.rows_hash
    detail = @menu_restaurant_page.details 
    expect(detail).to have_text infos['categoria']
    expect(detail).to have_text infos['descricao']
    expect(detail).to have_text infos['horario']
end