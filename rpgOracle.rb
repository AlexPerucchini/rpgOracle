#!/usr/bin/ruby

# rpgOracle
# author alex.perucchini
# randomizes RPG elements for solo play
# requires: https://github.com/piotrmurach/
require './source/Oracles'
require './source/Monsters'
require './source/NPCs'
require 'tty-prompt'

def main_menu
  prompt = TTY::Prompt.new
  puts "
  *******************************************************************************************
  ************************************* THE RPG ORACLE **************************************
  ***************************** Your Gateway To Solo Adventures! ****************************
  *******************************************************************************************
  "
  begin
    loop do
      prompt.select('Consult an Oracle. Quit to exit the program...', echo: true, cycle: true, per_page: 20) do |menu|
        menu.choice 'Action/Theme/Goal',  -> { action_theme_goal }
        menu.choice 'Combat ',            -> { combat }
        menu.choice 'Mystic Backlash',    -> { mystic_backlash }
        menu.choice 'Monsters Tables',    -> { monster_menu }
        menu.choice 'NPC Tables',         -> { npc_menu }
        menu.choice 'NPC / Monsters Reaction', -> { npc_reaction }
        menu.choice 'Place',              -> { place }
        menu.choice 'Story Seeds',        -> { seed }
        menu.choice 'Twist',              -> { twist }
        menu.choice 'Question',           -> { question }
        menu.choice 'Weather',            -> { weather }
        menu.choice 'Game Credits',       -> { credits }
        menu.choice 'Quit',               -> { exit } # non-existent method exits the program
      end
      puts '******************************************************************************************** '
    end
  end
end

main_menu()




