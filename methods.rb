require 'tty-prompt'
require 'rainbow'

def welcome
    @name = "Retro Spares Stock Inventory System"
    puts "Welcome to the #{@name}!"
end

def display_products(stocklist_name)
        puts "---------"
        puts Rainbow(stocklist_name).green
        puts "--------------------------------------------------"
        puts "   ID     Make     Model     Type     Quantity"
        puts "--------------------------------------------------"
        @products.each {|product| puts product}
end