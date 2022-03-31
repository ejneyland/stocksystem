# //////////////////////////////////////////////////
# 
#       Retro Spares Stock Inventory System
#               Terminal Application
#                  Ethan Neyland
# 
# //////////////////////////////////////////////////

require 'tty-prompt'

stocklist = Stocklist.new(stocklist_products)

class WelcomeMenu
    attr_reader :name

    def initialize
        @name = "Retro Spares Stock Inventory System"
    end

    def welcome
        puts "Welcome to the #{@name}!"
    end
end

welcome_menu = WelcomeMenu.new
welcome_menu.welcome

while true

    selection = TTY::Prompt.new.select("What would you like to do?") do |menu|
        menu.choice("View Stocklist", 1)
        menu.choice("View Manufacturing List", 2)
        menu.choice("Process Invoice", 3)

        case selection
        when 1
            puts "here is a stocklist"
        when 2
            puts "here is the manufacturing list"
        when 3
            puts "upload an invoice"
        end
    end
end




