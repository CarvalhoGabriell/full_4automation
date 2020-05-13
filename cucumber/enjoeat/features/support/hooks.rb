require "base64"

Before do
    page.current_window.resize_to(1440, 900)

    @menu_restaurant_page = MenuRestaurantPage.new
    @restaurant_list_page = RestaurantListPage.new 
    @order_page = OrderPage.new
end
    



Before('@burger_house') do 
    visit "/restaurants/burger-house/menu"
end

Before('@ice_cream') do
    visit "/restaurants/ice-cream/menu"
end 

After do |scenario|
    if scenario.passed?
        print_file = page.save_screenshot("log/screenshot.png")           # SERVE PARA TIRAR UM PRINT TEMPORARAIO
        print_b64 = Base64.encode64(File.open(print_file, "rb").read)     # Transformar em BINÁRIO, abrir o file e ler ele
        embed(print_b64, "image/png", "Screenshot")                       # Cucumber anexa o screenshot dentro do relatótio html
    end
end
