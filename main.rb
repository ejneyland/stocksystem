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

# All products and their attribute values added as new products
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


# defined input variables for new Stocklist
cable_stocklist = "Cable Stocklist"
products = [hcvsac, hcvnac, ffelac, ffxdac, hcvlhc, hcvnhc, ffxdhc, ffxbhc, hcvbsc, hchksc, ffxwsc, ffxasc]

# create main stocklist, given the name 'cable stocklist' and assigned all products
stocklist = Stocklist.new(cable_stocklist, products)

# add to manufacturing list
manulist = Manulist.new(name = "Manufacturing List", items = [])

# welcome message
welcome

while true

    # menu options displayed to user
    selection = TTY::Prompt.new.select(Rainbow("What would you like to do?").yellow) do |menu|
        menu.choice("View Stocklist", 1)
        menu.choice("View Manufacturing List", 2)
        menu.choice("Process Invoice", 3)

        case selection
        
        # When user chooses to 'view stocklist', product details are displayed
        when 1
            clear
            stocklist.display_stocklist
            products.each do |product|
                puts product.display_product
                break_line
            end
            # To apply an action to a product, the user specifies the product of interest to reveal further options
            puts Rainbow("Enter in a product ID for more options. E.g. ACVSV6").green
            response = gets.chomp.upcase
            clear
            if products.find { |product| product.id == response }
                puts Rainbow(products.find { |product| product.id == response }).yellow
                puts Rainbow((products.find { |product| product.id == response }).display_quantity).red
                puts Rainbow("Would you like to add this product to the manufacturing list?   yes/no").green
                while answer = gets.chomp.downcase
                    case answer
                    when "yes"
                        puts Rainbow("How many?").green
                        amount = gets.chomp.to_i
                        clear
                        manulist.add_item((products.find { |product| product.id == response }), amount)
                        puts Rainbow("Confirmed. You just added #{amount} of #{response} to the manufacturing list.").green
                        break_line
                        break
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    when "no"
                        puts "Okay"
                        break
                    else 
                        puts "Invalid input. Please answer either yes or no."
                    end
                end
            else
                puts "Invalid selection"
            end

        when 2
            clear
            manulist.display_manulist
            puts "Here is the manufacturing list"
            # puts manuf_list.each do |item|
            #     puts item
            # end
        when 3
            puts "Upload an invoice"
        end
    end
end






