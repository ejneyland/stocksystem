require_relative './home.rb'

class StockList
    attr_reader :name, :stocklist

    def initialize(stocklist_products)
        @name = "Retro Spares Stock Inventory System"
        @stocklist = StockList.new
        populate_stocklist(stocklist_products)
    end

    def welcome
        puts "Hello! Welcome to the #{@name}"
    end
end
