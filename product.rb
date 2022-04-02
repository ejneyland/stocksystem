require 'tty-prompt'

class Product

    attr_reader :id, :make, :model, :type
    attr_accessor :quantity

    def initialize(id, make, model, type, quantity)
        @id = id
        @make = make
        @model = model
        @type = type
        @quantity = 0
    end

    def add_new_product
        product = Product.new(id, make, model, type, quantity)
    end

    def to_s
        return "#{@id}, #{@make}, #{@model}, #{@type}, #{@quantity}"
    end

end


hcvsac = Product.new("ACVSV6", "Holden", "Commodore VS V6", "Accelerator cable", 1)
hcvnac = Product.new("ACVNV8", "Holden", "Commodore VN V8", "Accelerator Cable", 1)
ffelac = Product.new("XB9C799A", "Ford", "Falcon EL V6", "Accelerator Cable", 1)
ffxdac = Product.new("XD9C799A", "Ford", "Falcon XD V6", "Accelerator Cable", 1)
hcvlhc = Product.new("92024845", "Holden", "Commodore VL", "Handbrake cable", 1)
hcvnhc = Product.new("92027120", "Holden", "Commodore VN", "Handbrake cable", 1)
ffxdhc = Product.new("XD2A604B", "Ford", "Falcon XD", "Handbrake cable", 1)
ffxbhc = Product.new("XA2853BA", "Ford", "Falcon XB", "Handbrake cable", 1)
hcvbsc = Product.new("9947987", "Holden", "Commodore VB/VK", "Speedo Cable", 1)
hchksc = Product.new("2806048", "Holden", "Commodore HK/HG", "Speedo Cable", 1)
ffxwsc = Product.new("XW17260D", "Ford", "Falcon XW/XY V8", "Speedo Cable", 1)
ffxasc = Product.new("XA17260CB", "Ford", "Falcon XA/XC V8", "Speedo Cable", 1)


