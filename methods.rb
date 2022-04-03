require 'tty-prompt'
require 'rainbow'

def break_line
    puts "---------------------------------------------------"
end

def welcome
    @name = "Retro Spares Stock Inventory System"
    break_line
    puts Rainbow("Welcome to the #{@name}!").red
    break_line
end

