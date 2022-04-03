require 'tty-prompt'
require 'rainbow'

class Product

    attr_reader :id, :make, :model, :type
    attr_accessor :quantity

    def initialize(id, make, model, type, quantity)
        @id = id
        @make = make
        @model = model
        @type = type
        @quantity = 0
        product = []
    end

    def add_new_product
        product = Product.new(id, make, model, type, quantity)
    end

    def to_s
        return "#{@id}, #{@make}, #{@model}, #{@type}, #{@quantity}"
    end

end


