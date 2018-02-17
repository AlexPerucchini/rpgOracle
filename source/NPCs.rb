def npc_menu
  require 'tty-prompt'

  prompt2 = TTY::Prompt.new
  puts '************************************ NPCs Tables ***************************************'
  begin
    loop do
      prompt2.select('Consult a Monster table. Back to return to the main program...', echo: true, cycle: true, per_page: 5) do |menu|
        menu.choice 'NPC table 1',  -> { }
        menu.choice 'NPC table 2',  -> { }
        menu.choice 'NPC table 3',  -> { }
        menu.choice 'Back',         -> { main_menu }
      end
      puts '************************************ NPC sTables ***************************************'
    end
  end
end
