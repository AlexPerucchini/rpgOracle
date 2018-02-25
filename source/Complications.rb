def complications_menu
  require 'tty-prompt'

  prompt1 = TTY::Prompt.new
  puts '************************************ Monsters Tables *******************************************'
  begin
    loop do
      prompt1.select('Consult the Complications table. Back return to the main program...', echo: true, cycle: true, per_page: 5) do |menu|
        menu.choice 'Adventure Twist',-> { twist }
        menu.choice 'Decript Manor',  -> { decript_manor }
        menu.choice 'Mystic Backlash',-> { mystic }
        menu.choice 'Undercity',      -> { undercity }
        menu.choice 'Back',           -> { main_menu }
      end
      puts '************************************ Monsters Tables ***************************************'
    end
  end
end

def decript_manor
  puts 'Decript Manor - What complications lurk around in a decript manor...'

  o = Oracle.new('Decript_Manor')
  puts o.call_oracle
end

def mystic
  puts 'Mystic Backlash - Those who deal in magic may find themselves at the mercy of chaos.'

  o = Oracle.new('Mystic_Backlash')
  puts o.call_oracle
end

def twist
  puts 'Twist - Use this oracle to introduce a narrative surprise or revelation. That is your cue to make something dramatic happen.'

  o = Oracle.new('Twist')
  puts o.call_oracle
end

def undercity
  puts 'Decript Manor - What complications lurk around in the undercity...'

  o = Oracle.new('Undercity')
  puts o.call_oracle
end



