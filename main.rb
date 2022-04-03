# //////////////////////////////////////////////////
# 
#       Retro Spares Stock Inventory System
#               Terminal Application
#                  Ethan Neyland
# 
# //////////////////////////////////////////////////

require_relative './inventory'
require_relative './stocklist.rb'
require_relative './manulist'
require_relative './invoice'
require_relative './product'
require_relative './methods'

require 'tty-prompt'
require 'rainbow'

hcvsac = Product.new("ACVSV6", "Holden", "Commodore VS V6", "Accelerator Cable", 1)
hcvnac = Product.new("ACVNV8", "Holden", "Commodore VN V8", "Accelerator Cable", 1)
ffelac = Product.new("XB9C799A", "Ford", "Falcon EL V6", "Accelerator Cable", 1)
ffxdac = Product.new("XD9C799A", "Ford", "Falcon XD V6", "Accelerator Cable", 1)
hcvlhc = Product.new("92024845", "Holden", "Commodore VL", "Handbrake Cable", 1)
hcvnhc = Product.new("92027120", "Holden", "Commodore VN", "Handbrake Cable", 1)
ffxdhc = Product.new("XD2A604B", "Ford", "Falcon XD", "Handbrake Cable", 1)
ffxbhc = Product.new("XA2853BA", "Ford", "Falcon XB", "Handbrake Cable", 1)
hcvbsc = Product.new("9947987", "Holden", "Commodore VB/VK", "Speedo Cable", 1)
hchksc = Product.new("2806048", "Holden", "Commodore HK/HG", "Speedo Cable", 1)
ffxwsc = Product.new("XW17260D", "Ford", "Falcon XW/XY V8", "Speedo Cable", 1)
ffxasc = Product.new("XA17260CB", "Ford", "Falcon XA/XC V8", "Speedo Cable", 1)

cable_stocklist = "Cable Stocklist"

products = [hcvsac, hcvnac, ffelac, ffxdac, hcvlhc, hcvnhc, ffxdhc, ffxbhc, hcvbsc, hchksc, ffxwsc, ffxasc]

stocklist = Stocklist.new(cable_stocklist, products)



while true

    # Welcome message and menu options displayed to user
    welcome

    selection = TTY::Prompt.new.select(Rainbow("What would you like to do?").yellow) do |menu|
        menu.choice("View Stocklist", 1)
        menu.choice("View Manufacturing List", 2)
        menu.choice("Process Invoice", 3)

        case selection
        
        # When user chooses to 'view stocklist', product details are displayed
        when 1
            stocklist.display_products
            products.each do |product|
                puts product
                break_line
            end
            # To apply an action to a product, the user specifies the product of interest to reveal further options
            puts "Enter in a product ID for more options"
            response = gets.chomp
            if response = "#{@id}"
                puts products.find { |prod| prod.id == response }
                puts "Would you like to add this product to the manufacturing list?"
                answer = gets.chomp
                puts "How many?"
                amount = gets.chomp
                # add to manufacturing list
                manuf_list = Manulist.new
            else
                puts "Invalid selection"
            end

        when 2
            puts "Here is the manufacturing list"
            # puts manuf_list.each do |item|
            #     puts item
            # end
        when 3
            puts "Upload an invoice"
        end
    end
end






