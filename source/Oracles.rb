########################################
# Oracles
# included in rpgOracle.rb
########################################
require './source/Oracle'

def action_theme_goal
  puts 'Theme, Action, Goal - Use this oracle to set a scene and inspire an event for your heroes or NPCs.'

  a = Oracle.new('Action')
  puts a.call_oracle

  t = Oracle.new('Theme')
  puts t.call_oracle

  g = Oracle.new('Goal')
  puts g.call_oracle

  s = Oracle.new('Seed')
  puts s.call_oracle
end

def combat
  puts "Combat - Use this oracle to help inspire an action for an NPC in combat. When you’re not sure what your foe will do next,
  particularly when they have initiative, and interpret the result as appropriate to your foe and the situation."

  o = Oracle.new('Combat')
  puts o.call_oracle
end

def twist
  puts 'Twist - Use this oracle to introduce a narrative surprise or revelation. That is your cue to make something dramatic happen.'

  o = Oracle.new('Twist')
  puts o.call_oracle
end

def mystic_backlash
  puts 'Mystic Backlash - Those who deal in magic may find themselves at the mercy of chaos.'

  o = Oracle.new('Mystic_Backlash')
  puts o.call_oracle
end

def npc_reaction
  puts "ORACLE: NPCs or Monster Reaction
  How will an NPC or monster react? Find out..."

  reaction = ['Violently hostile, immediate attack',
              'Hostile, immediate action',
              'Uncertain but 55% prone toward negative',
              'Neutral - uninterested - uncertain',
              'Uncertain but 55% prone toward positive',
              'Friendly, immediate action',
              'Enthusiastically friendly, immediate acceptance']
  
  puts "NPC/Monster reaction -> #{reaction.sample} "
end

def place
  puts 'Place - Discover exotic locales for your adventures...'
  town()
  p = Oracle.new('Place')
  puts p.call_oracle

  d = Oracle.new('Place_Descriptor')
  puts d.call_oracle

  w = Oracle.new('Weather')
  puts w.call_oracle
end

def weather
  puts 'Weather - this oracle will give you the current weather...'

  o = Oracle.new('Weather')
  puts o.call_oracle
end

def seed
  puts 'Story Seeds- How will your adventure begin? Choose from this Oracle to send your heroes on an epic quest.'

  o = Oracle.new('Seed')
  puts o.call_oracle
end

def town
  prefix = %w(Lost Bleak Green Raven Red Great Low Storm Mourn Stone Lost Rock
              Sword Thorn Wolf Gray Axe Bridge Bleak White Black New Grim High Shield Frost Raven)

  suffix = %W(moor ford  watch wood stone fall(s) field bridge cairn hall 
              rock frost home crag hope ridge haven river hill mark land mount
              brook stead wick)
  puts "Town or settlement -> #{prefix.sample}#{suffix.sample}"
end

def question
  puts "Question -  Ask a question that has a yes or no answer, it is important to keep it simple and able to be answered. 
  Do I encounter a trap? Are guards present? 'And' results are favorable. An additional negative outcome occurs with a 'No But' or 'Yes But'"

  questions = ['No and', 'No', 'No But', 'Yes But', 'Yes', 'Yes And'].sample
  outcomes = ['Nothing significant',
              'Trap or some  unexpected obstacle',
              'Unique feature, helpful',
              "Unique feature, hurtful choose the Twist oracle. If this is a magic spell consult the 'Mystic Backlash' oracle", 
              'NPC(s) consult the NPCs tables',
              'Monster(s) consult the Monsters tables'].sample

  if questions == 'No But' || questions == 'Yes But'
    puts "Answer -> #{questions}. Outcome -> #{outcomes}"
  else
    puts "Answer -> #{questions}"
  end
end

def credits
  puts " The rpgOracle would not have been possible without the following awesome resources:
  - Sol1um
  - IronSworn
  "
end
