class Manulist
    attr_reader :manu_items, :name

    def initialize(name, manu_items)
        @name = name
        @manu_items = manu_items
    end

    def upsert_manu_item(id, quantity)
        @manu_items[id] = @manu_items[id] ? @manu_items[id] + quantity : quantity
    end

    def display_manulist
        smaller_line
        puts " "*6 + Rainbow("#{@name}").yellow
        smaller_line
        puts " "*6 + Rainbow("ID").orange + " "*12 + Rainbow("Qty").red
        smaller_line
        @manu_items.each do |id, quantity|
            puts "ID: #{id} | Quantity: #{quantity}"
        smaller_line
        end
    end

end

class ManuItem
    def initialize(id, quantity)
        @id = id
        @quantity = quantity
    end
end