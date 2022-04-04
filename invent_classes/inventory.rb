class Inventory
    attr_reader :name

    def initialize
        @name = name
        @products = []
        @stocklist = StockList.new
        @inventory = Inventory.new  
    end

end
