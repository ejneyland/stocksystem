require_relative './stocklist'

require 'tty-prompt'

class Product

    attr_reader :make, :model
    attr_accessor :quantity

    def initialize(id, make, model, type, quantity)
        @id = id
        @make = make
        @model = model
        @type = type
        @quantity = quantity
        product = Product.new(id, make, model, type, quantity)
    end

    def to_s
        return "#{@make}, #{@model}, #{@quantity}"
    end

end

cable_one = Product.new("ACVSV6", "Holden", "Commodore VS V6", "Accelerator cable", 1)
cable_two = Product.new("ACVNV8", "Holden", "Commodore VN V8", "Accelerator Cable", 1)
cable_three = Product.new("XB9C799A", "Ford", "Falcon EL V6", "Accelerator Cable", 1)
cable_four = Product.new("XD9C799A", "Ford", "Falcon XD V6", "Accelerator Cable", 1)
cable_five = Product.new("92024845", "Holden", "Commodore VL", "Handbrake cable", 1)
cable_six = Product.new("92027120", "Holden", "Commodore VN", "Handbrake cable", 1)
cable_seven = Product.new("XD2A604B", "Ford", "Falcon XD", "Handbrake cable", 1)
cable_eight = Product.new("XA2853BA", "Ford", "Falcon XB", "Handbrake cable", 1)
cable_nine = Product.new("9947987", "Holden", "Commodore VB/VK", "Speedo Cable", 1)
cable_ten = Product.new("2806048", "Holden", "Commodore HK/HG", "Speedo Cable", 1)
cable_eleven = Product.new("XW17260D", "Ford", "Falcon XW/XY V8", "Speedo Cable", 1)
cable_twelve = Product.new("XA17260CB", "Ford", "Falcon XA/XC V8", "Speedo Cable", 1)

