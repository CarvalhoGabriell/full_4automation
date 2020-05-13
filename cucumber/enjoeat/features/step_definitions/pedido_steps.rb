
Dado("que eu fechei o pedido com os itens:") do |table|
    @products_list = table.hashes 
    steps %{
       Quando eu adiciono todos os itens
    }
    @menu_restaurant_page.cart.close 
    sleep 8
end

Dado("informei meus dados de entrega:") do |table|
    user = table.rows_hash

    @order_page.fill_user_data(user)
end

Quando("finalizo o pedido com {string}") do |payment|
    @order_page.select_pay(payment)
    @order_page.end_up_order
end

Então("devo ver a seguinte mensagem:") do |expect_message|
    expect(@order_page.summary).to have_text expect_message
end