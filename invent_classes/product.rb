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
        @quantity = quantity
    end

    def display_product
        return "#{@id}" +" "*(12 - @id.length)+  "#{@make}" +" "*(10 - @make.length)+ "#{@model}" +" "*(20 - @model.length)+ "#{@type}" +" "*(20 - @type.length)+ "#{@quantity}"
    end

    def to_s
        return "#{@id}"
    end

end

