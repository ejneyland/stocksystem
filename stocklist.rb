require_relative './product'

require 'tty-prompt'

class Stocklist
    attr_reader :name, :stocklist

    def initialize
        @stocklist = Stocklist.new
        @products = []
    end

    def add_product(id, make, model, type, quantity)
        product = Product.new(id, make, model, type, quantity)
        @products << product
    end

    def get_product
        return @products
    end

    def display_products
        puts "Stocklist"
        puts "----------"
        @products.each {|product| puts product}
        return nil
    end

end

# ("ACVSV6", "Holden", "Commodore VS V6", "Accelerator cable", 1)
# ("ACEL6", "Ford", "Falcon EL V6", "Accelerator Cable", 1)
