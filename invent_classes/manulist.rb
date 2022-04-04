class Manulist

    def initialize(name, items)
        @name = name
        @items = []
    end

    # def add_product(id, quantity)
    #     @item[id] += quantity
    # end

    def add_item(id, quantity)
        manu_item = ManuItem.new(id, quantity)
        @items << manu_item
    end

    def display_manulist
        smaller_line
        puts " "*6 + Rainbow("#{@name}").yellow
        smaller_line
        puts " "*6 + Rainbow("ID").orange + " "*12 + Rainbow("Qty").red
        smaller_line
        return @items
    end

    def display_items
        return @items
    end

end

class ManuItem
    def initialize(id, quantity)
        @id = id
        @quantity = quantity.to_i
    end
end