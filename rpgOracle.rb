#!/usr/bin/ruby

# rpgOracle
# author alex.perucchini
# randomizes RPG elements for solo play
# requires: https://github.com/piotrmurach/
require './source/Oracles'
require 'tty-prompt'

prompt = TTY::Prompt.new
puts "
*******************************************************************************************
************************************* THE RPG ORACLE **************************************
***************************** Your Gateway To Solo Adventures! ****************************
*******************************************************************************************
"
begin
  loop do
    prompt.select("Consult an Oracle. Quit to exit the program... ", echo: true,  cycle: true, per_page: 10) do |menu|
      menu.choice 'Action & Theme', -> { action_theme }
      menu.choice 'Combat ', -> { combat }
      menu.choice 'Goal', -> { goal }
      menu.choice 'Mystic Backlash', -> { mystic_backlash }
      menu.choice 'NPC Reaction', -> { npc_reaction }
      menu.choice 'Place', -> { place }
      menu.choice 'Story Seeds', -> { seeds }
      menu.choice 'Twist', -> { twist }
      menu.choice 'Weather', -> { weather }
      menu.choice 'Quit', -> { exit }
    end
    puts "******************************************************************************************** "
  end
end









