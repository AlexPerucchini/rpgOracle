#!/usr/bin/ruby

# rpgOracle
# author alex.perucchini
# randomizes RPG elements for solo play
# requires: https://github.com/piotrmurach/
require "./source/Oracles"
require "tty-prompt"

prompt = TTY::Prompt.new
puts "===================================================================================="
prompt.say "Welcome to the rpgOracle. Your Gateway to solo adventures!"
puts "===================================================================================="

begin
  loop do
    prompt.select("Choose the Oracle(s) to consult? Select Quit to exit the program... ", cycle: true) do |menu|
      menu.choice 'Action', -> { action }
      menu.choice 'Combat ', -> { combat }
      menu.choice 'Goal', -> { goal }
      menu.choice 'Theme', -> { theme }
      menu.choice 'Twist', -> { twist }
      menu.choice 'Quit' , -> { exit }
    end
    puts "===================================================================================="
  end
end










