require "tty-prompt"
require 'figlet'

font = Figlet::Font.new('big.flf')
figlet = Figlet::Typesetter.new(font)
puts figlet['hello world']

prompt = TTY::Prompt.new
prompt.ask("What is your name?", default: ENV["USER"])
# => What is your name? (piotr)