require_relative '../invent_classes/inventory'
require_relative '../invent_classes/stocklist'
require_relative '../invent_classes/manulist'
require_relative '../invent_classes/invoice'
require_relative '../invent_classes/product'
require_relative '../invent_methods/methods'

require 'rspec'

describe Product do
    it 'should return the id of the product' do
        id = "ACVSV6"
        make = "Holden"
        model = "Commodore VS V6"
        type = "Accelerator Cable"
        quantity = 1
        product = Product.new(id, make, model, type, quantity)
        expect(product.id).to(eq(id))
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
    it 'should be able to get a products quantity' do
        id = "ACVSV6"
        make = "Holden"
        model = "Commodore VS V6"
        type = "Accelerator Cable"
        quantity = 1
        name = "Cable Stocklist"
        products = []
        stocklist = Stocklist.new(name, products)
        stocklist.add_product(id, make, model, type, quantity)
        expect(stocklist.get_quantity_by_id(id)).to eq(quantity)
    end
    it 'should be able to add an item' do
        id = "ACVSV6"
        make = "Holden"
        model = "Commodore VS V6"
        type = "Accelerator Cable"
        quantity = 1
        name = "Cable Stocklist"
        products = []
        stocklist = Stocklist.new(name, products)
        stocklist.add_product(id, make, model, type, quantity)
        expect(stocklist.products.length).to be(1)
    end
        #     it 'should be able to display a product' do
        #     end

        #     it 'should be able to update a products quantity' do
        #     end
end

describe Manulist do
    it 'should be able to add a product' do
        name = "Manufacturing List"
        items = 
        manulist = Manulist.new(name, items)
        id = "ACVSV6"
        quantity = 1
        manulist.add_manu_item(id, quantity)
        expect(manulist.get_manu_items().length).to be(1)
    end
    it 'should update an item quantity' do
        name = "Manufacturing List"
        items = 
        manulist = Manulist.new(name, items)
        id = "ACVSV6"
        quantity = 1
        quantity_add = 2
        manulist.add_manu_item(id, quantity)
        manulist.add_manu_item(id, quantity_add)
        expect(manulist.get_manu_items()[id]).to be(quantity + quantity_add)
    end
end


describe Inventory do
    it 'should create an inventory with a name' do
        name = "Retro Spares Manufacturing Inventory System"
        products = []
        inventory = Inventory.new(name, products)
        expect(inventory.name).to eq(name)
    end
    it 'should create an inventory with a stocklist' do
        name = "Retro Spares Manufacturing Inventory System"
        products = []
        inventory = Inventory.new(name, products)
        expect(inventory.stocklist.get_products.length).to be(length)
    end
    # it 'should create an inventory with a stocklist' do
    #     name = "Retro Spares Manufacturing Inventory System"
    #     stocklist_products = {commodore: 1, ford: 2}
    #     inventory = Inventory.new(name, stocklist_products)
    #     expect(inventory.stocklist.get_products.length).to(eq(2))
    # end
    # it 'should add a product to the manufacturing list' do
    #     name = "Retro Spares Manufacturing Inventory System"
    #     stocklist_products = {commodore: 1, ford: 2}
    #     inventory = Inventory.new(name, stocklist_products)
    #     product = "commodore"
    #     quantity = 1
    #     inventory.add_to_manulist(product, quantity)
    #     expect(inventory.get_manulist().get_products().length).to(eq(1))
    # end
end