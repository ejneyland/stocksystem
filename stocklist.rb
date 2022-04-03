require 'tty-prompt'
require 'rainbow'

class Stocklist
    attr_reader :name, :products

    def initialize(name, products)
        @name = name
        @products = []
    end

    def display_products
        puts "---------------"
        puts Rainbow(@name).green
        puts "-------------------------------------------------------"
        puts " " + Rainbow("ID").orange + "     Make     Model            Type          " + Rainbow("Qty").red
        puts "-------------------------------------------------------"
    end

    def self.add_product(id, make, model, type, quantity)
        product = Product.new(id, make, model, type, quantity)
        @products << product
    end

    def get_product
        return @products
    end

end

