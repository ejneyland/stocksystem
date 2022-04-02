require 'tty-prompt'
require 'rainbow'

class Stocklist
    attr_reader :name, :products

    def initialize(name, products)
        @name = name
        @products = []
    end

    def self.add_product(id, make, model, type, quantity)
        product = Product.new(id, make, model, type, quantity)
        @products << product
    end

    def get_product
        return @products
    end

end


# cable_stocklist = StockList.new
# cable_stocklist.add_product("ACVSV6", "Holden", "Commodore VS V6", "Accelerator cable", 1)
# cable_stocklist.add_product("ACVNV8", "Holden", "Commodore VN V8", "Accelerator Cable", 1)
# cable_stocklist.add_product("XB9C799A", "Ford", "Falcon EL V6", "Accelerator Cable", 1)
# cable_stocklist.add_product("XD9C799A", "Ford", "Falcon XD V6", "Accelerator Cable", 1)
# cable_stocklist.add_product("92024845", "Holden", "Commodore VL", "Handbrake cable", 1)
# cable_stocklist.add_product("92027120", "Holden", "Commodore VN", "Handbrake cable", 1)
# cable_stocklist.add_product("XD2A604B", "Ford", "Falcon XD", "Handbrake cable", 1)
# cable_stocklist.add_product("XA2853BA", "Ford", "Falcon XB", "Handbrake cable", 1)
# cable_stocklist.add_product("9947987", "Holden", "Commodore VB/VK", "Speedo Cable", 1)
# cable_stocklist.add_product("2806048", "Holden", "Commodore HK/HG", "Speedo Cable", 1)
# cable_stocklist.add_product("XW17260D", "Ford", "Falcon XW/XY V8", "Speedo Cable", 1)
# cable_stocklist.add_product("XA17260CB", "Ford", "Falcon XA/XC V8", "Speedo Cable", 1)

# cable_stocklist.display_products

