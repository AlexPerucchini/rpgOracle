def monster_menu
  require 'tty-prompt'

  prompt1 = TTY::Prompt.new
  puts '************************************ Monsters Tables *******************************************'
  begin
    loop do
      prompt1.select('Consult a Monster table. Back return to the main program...', echo: true, cycle: true, per_page: 5) do |menu|
        menu.choice 'Monsters table 1', -> {}
        menu.choice 'Monsters table 2', -> {}
        menu.choice 'Monsters table 3', -> {}
        menu.choice 'Back',             -> { main_menu }
      end
      puts '************************************ Monsters Tables ***************************************'
    end
  end
end
