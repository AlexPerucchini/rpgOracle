########################################
# Oracle theme files 
# included in rpgOracle.rb
########################################
 
require "./source/Oracle"

def action_theme
  puts "ORACLE: Theme and Action
  Use this table to inspire a discovery, event, character goal, or situation. A roll on this table 
  can be combined with a Theme to provide an action and a subject. Then, interpret the 
  result based on the context of the question and your current situation."

  a = Oracle.new('Action')
  puts a.call_oracle

  t = Oracle.new('Theme')
  puts t.call_oracle
end

def goal
  puts "ORACLE: Goal
  Use this oracle to define the primary motivation of an NPC or a faction. It can also be used 
  to kick-off a personal quest for your own character."

  o = Oracle.new('Goal')
  puts o.call_oracle
end

def combat
  puts "ORACLE: Combat 
  Use this oracle to help inspire an action for an NPC in combat. 
  When you’re not sure what your foe will do next, particularly when they have initiative, 
  roll on this table and interpret the result as appropriate to your foe and the situation."

  o = Oracle.new('Combat')
  puts o.call_oracle
end

def twist
  puts "ORACLE: Twist 
  Use this oracle to introduce a narrative surprise or revelation. 
  That is your cue to make something dramatic happen."

  o = Oracle.new('Twist')
  puts o.call_oracle
end

def mystic_backlash
  puts "ORACLE: Mystic Backlash 
  Those who deal in magic may find themselves at the mercy of chaos."

  o = Oracle.new('Mystic_Backlash')
  puts o.call_oracle
end

def npc_reaction
  puts "ORACLE: NPCs or Monster Reaction"

  reaction = [ "Violently hostile, immediate attack", 
    "Hostile, immediate action", "Uncertain but 55% prone toward negative", 
    "Neutral - uninterested - uncertain", "Uncertain but 55% prone toward positive",
    "Friendly, immediate action", "Enthusiastically friendly, immediate acceptance" ]
  
  puts "NPC/Monster Reaction: #{reaction.shuffle.first} "
end

def place
  puts "ORACLE: Place"

  o = Oracle.new('Place')
  puts o.call_oracle

  d = Oracle.new('Place_Descriptor')
  puts d.call_oracle
end

def weather
  puts "ORACLE: Weather"

  o = Oracle.new('Weather')
  puts o.call_oracle
end

def seeds
  puts "ORACLE: Story Seeds
  How will your adventure begin? Choose from this Oracle to send your heroes on an epic quest."

  o = Oracle.new('Seed')
  puts o.call_oracle
end