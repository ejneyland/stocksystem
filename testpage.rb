require_relative './product'
require_relative './methods'

# require_relative './stocklist'

hcvsac = Product.new("ACVSV6", "Holden", "Commodore VS V6", "Accelerator cable", 1)
hcvnac = Product.new("ACVNV8", "Holden", "Commodore VN V8", "Accelerator Cable", 1)
ffelac = Product.new("XB9C799A", "Ford", "Falcon EL V6", "Accelerator Cable", 1)
ffxdac = Product.new("XD9C799A", "Ford", "Falcon XD V6", "Accelerator Cable", 1)
hcvlhc = Product.new("92024845", "Holden", "Commodore VL", "Handbrake cable", 1)
hcvnhc = Product.new("92027120", "Holden", "Commodore VN", "Handbrake cable", 1)
ffxdhc = Product.new("XD2A604B", "Ford", "Falcon XD", "Handbrake cable", 1)
ffxbhc = Product.new("XA2853BA", "Ford", "Falcon XB", "Handbrake cable", 1)
hcvbsc = Product.new("9947987", "Holden", "Commodore VB/VK", "Speedo Cable", 1)
hchksc = Product.new("2806048", "Holden", "Commodore HK/HG", "Speedo Cable", 1)
ffxwsc = Product.new("XW17260D", "Ford", "Falcon XW/XY V8", "Speedo Cable", 1)
ffxasc = Product.new("XA17260CB", "Ford", "Falcon XA/XC V8", "Speedo Cable", 1)

# cable_stocklist = "Cable Stocklist"

products = [
    hcvsac, hcvnac, ffelac, ffxdac, 
    hcvlhc, hcvnhc, ffxdhc, ffxbhc, 
    hcvbsc, hchksc, ffxwsc, ffxasc
    ]

# stocklist = Stocklist.new(cable_stocklist, products)

# products.each do |product|
#     puts product
# end


# puts products.select { |product| product.id }
# products.find { |product| product.id }

puts "Enter in a product ID for more options"
response = gets.chomp.upcase
# puts response
clear
if products.find { |product| product.id == response }
    puts Rainbow(products.find { |product| product.id == response }).yellow
    puts Rainbow((products.find { |product| product.id == response }).display_quantity).red
else
    puts "false"
end




    # puts (products.find { |product| product.id })

# if response == products.find { |product| product.id }
#     puts response
    
# ["ACVSV6", "ACVNV8", "XB9C799A", "XD9C799A", "92024845", "92027120", "XD2A604B", "XA2853BA", "9947987", "2806048", "XW17260D", "XA17260CB"]
# puts "correct"
# puts products.find { |product| product.id == "#{@response}" }


# else
#     puts "invalid selection"
# end

# ACVSV6




