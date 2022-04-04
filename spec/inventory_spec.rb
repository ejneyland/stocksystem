require_relative './invent_classes/inventory'
require_relative './invent_classes/stocklist.rb'
require_relative './invent_classes/manulist'
require_relative './invent_classes/invoice'
require_relative './invent_classes/product'
require_relative './invent_methods/methods'

describe Product do
    it 'should return the ID of the product' do
        id = "ACVSV6"
        make = "Holden"
        model = "Commodore VS V6"
        type = "Accelerator Cable"
        quantity = 1
        product = Product.new(id, make, model, type, quantity)
        expect(product.id).to eq(id)
    end
    it 'should return the make of the product' do
        id = "ACVSV6"
        make = "Holden"
        model = "Commodore VS V6"
        type = "Accelerator Cable"
        quantity = 1
        product = Product.new(id, make, model, type, quantity)
        expect(product.make).to eq(make)
    end
    it 'should return the model of the product' do
        id = "ACVSV6"
        make = "Holden"
        model = "Commodore VS V6"
        type = "Accelerator Cable"
        quantity = 1
        product = Product.new(id, make, model, type, quantity)
        expect(product.model).to eq(model)
    end
    it 'should return the type of product' do
        id = "ACVSV6"
        make = "Holden"
        model = "Commodore VS V6"
        type = "Accelerator Cable"
        quantity = 1
        product = Product.new(id, make, model, type, quantity)
        expect(product.type).to eq(type)
    end
    it 'should return the quantity of the product' do
        id = "ACVSV6"
        make = "Holden"
        model = "Commodore VS V6"
        type = "Accelerator Cable"
        quantity = 1
        product = Product.new(id, make, model, type, quantity)
        expect(product.quantity).to eq(quantity)
    end
end

describe Stocklist do
    it 'should be able to add a product' do
        name = "Cable Stocklist"
        products = [
            ["ACVSV6", "Holden", "Commodore VS V6", "Accelerator Cable", 1],
            ["XB9C799A", "Ford", "Falcon EL V6", "Accelerator Cable", 1]
        ]
        stocklist = Stocklist.new
        stocklist.add_product(id, make, model, type, quantity)
        # expect(stocklist.get_model(make)).to(eq(model))
    end
    it 'should be able to display a product' do
        name = "Cable Stocklist"
        products = [
            ["ACVSV6", "Holden", "Commodore VS V6", "Accelerator Cable", 1],
            ["XB9C799A", "Ford", "Falcon EL V6", "Accelerator Cable", 1]
        ]
        stocklist = Stocklist.new
        stocklist.add_product(id, make, model, type, quantity)
        expect(stocklist.get_products().length).to(eq(1))
    end
    it 'should be able to update a products quantity' do
        name = "Cable Stocklist"
        products = [
            ["ACVSV6", "Holden", "Commodore VS V6", "Accelerator Cable", 1],
            ["XB9C799A", "Ford", "Falcon EL V6", "Accelerator Cable", 1]
        ]
        stocklist = Stocklist.new(name, products)
        product.id = "ACVSV6"
        quantity = 1
        stocklist.update_quantity(product.id, quantity)
        product.id = "ACVSV6"
        quantity = 2
        stocklist.update_quantity(product.id, quantity)
        expect(stocklist.product.quantity).to be(3)
    end
end

describe ManuList do
    it 'should be able to add a product' do
        manulist = ManuList.new
        id = "ACVSV6"
        quantity = 1
        manulist.add_product(id, quantity)
        expect(manulist.get_products().length).to(eq(quantity))
    end
    it 'should be able to update a products quantity' do
        manulist = ManuList.new
        id = "ACVSV6"
        quantity = 1
        quantity_add = 2
        manulist.add_product(id, quantity)
        manulist.add_product(id, quantity_add)
        expect(manulist.get_products()[id]).to(eq(quantity+quantity_add))
    end
end

describe Inventory do
    it 'should create an inventory with a name' do
        name = "Retro Spares Manufacturing Inventory System"
        stocklist_products = {}
        inventory = Inventory.new(name, stocklist_products)
        expect(inventory.name).to(eq(name))
    end
    it 'should create an inventory with a stocklist' do
        name = "Retro Spares Manufacturing Inventory System"
        stocklist_products = {commodore: 1, ford: 2}
        inventory = Inventory.new(name, stocklist_products)
        expect(inventory.stocklist.get_products.length).to(eq(2))
    end
    it 'should add a product to the manufacturing list' do
        name = "Retro Spares Manufacturing Inventory System"
        stocklist_products = {commodore: 1, ford: 2}
        inventory = Inventory.new(name, stocklist_products)
        product = "commodore"
        quantity = 1
        inventory.add_to_manulist(product, quantity)
        expect(inventory.get_manulist().get_products().length).to(eq(1))
    end
end