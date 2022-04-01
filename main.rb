# //////////////////////////////////////////////////
# 
#       Retro Spares Stock Inventory System
#               Terminal Application
#                  Ethan Neyland
# 
# //////////////////////////////////////////////////

require_relative './inventory'
require_relative './stocklist'
require_relative './manulist'
require_relative './invoice'
require_relative './product'
require_relative './methods'

require 'tty-prompt'
require 'rainbow'

while true

    Inventory.welcome

    selection = TTY::Prompt.new.select("What would you like to do?") do |menu|
        menu.choice("View Stocklist", 1)
        menu.choice("View Manufacturing List", 2)
        menu.choice("Process Invoice", 3)

        case selection
        when 1
            puts "Here is the stocklist"
        when 2
            puts "Here is the manufacturing list"
        when 3
            puts "Upload an invoice"
        end
    end
end






