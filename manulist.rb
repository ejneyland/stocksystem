class Manulist

    def initialize(manu_products)
        @manu_products = Array.new(0)
    end

    def add_product(model, quantity)
        @manu_products[model] += quantity
    end

    def get_products
        return @manu_products
    end
    
end