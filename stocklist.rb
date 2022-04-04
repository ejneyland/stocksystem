require 'tty-prompt'
require 'rainbow'

class Stocklist
    attr_reader :name, :products

    def initialize(name, products)
        @name = name
        @products = []
    end

    def display_stocklist
        break_line
        puts " "*23 + "| " + Rainbow(@name).green + " |"
        break_line
        puts Rainbow("ID").orange + " "*10 + "Make" + " "*6 + "Model" + " "*15 + "Type" + " "*15 + Rainbow("Qty").red
        break_line
    end

    def self.add_product(id, make, model, type, quantity)
        product = Product.new(id, make, model, type, quantity)
        @products << product
    end

    # def update_quantity(id, quantity)
    #     @quantity += 
    #     product.quantity = 
    # end

    def get_product
        return @products
    end

end

