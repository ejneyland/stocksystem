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
        @quantity = quantity.to_i
            quantity >=0 ? return : 0
        product = []
    end

    def add_new_product
        product = Product.new(id, make, model, type, quantity)
    end

    # def display_quantity
    #     if quantity == 0
    #         puts Rainbow("#{@quantity}").red
    #     elsif quantity < 5
    #         puts Rainbow("#{@quantity}").orange
    #     elsif quantity >= 5
    #         puts Rainbow("#{@quantity}").green
    #     else
    #         puts @quantity
    #     end
    # end

    def display_product
        if quantity == 0
            @quantity = Rainbow("#{@quantity}").red
        elsif quantity < 5
            @quantity = Rainbow("#{@quantity}").orange
        elsif quantity >= 5
            @quantity = Rainbow("#{@quantity}").green
        else
            @quantity = quantity
        end
    

        return "#{@id}" +" "*(12 - @id.length)+  "#{@make}" +" "*(10 - @make.length)+ "#{@model}" +" "*(20 - @model.length)+ "#{@type}" +" "*(20 - @type.length)+ "#{@quantity}"
    end

    def display_quantity
        return "Quantity: #{@quantity}"
    end

    def to_s
        return "#{@id}"
    end

end

