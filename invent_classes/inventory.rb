require_relative '../invent_classes/stocklist'

class Inventory
    attr_reader :name, :stocklist

    def initialize(name, products)
        @name = name
        @products = []
        @stocklist = Stocklist.new
        populate_stocklist(products)
    end

    def populate_stocklist(products)
        products.each do |id, quantity|
            @stocklist.add_product(id, quantity)
        end
    end

end
