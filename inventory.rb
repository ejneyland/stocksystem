class Inventory
    attr_reader :name

    def initialize
        @name = name
        @products = []
        @stocklist = Stocklist.new
        @inventory = Inventory.new  
    end

    def self.welcome
        @name = "Retro Spares Stock Inventory System"
        puts "Welcome to the #{@name}!"
    end

end
