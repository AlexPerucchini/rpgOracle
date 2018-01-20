########################################
# Oracle theme files 
# included in rpgOracle.rb
########################################
 
require "./Oracle"

def theme
  puts "ORACLE: THEME
  As with the Action oracle, this is an interpretative table which you can use to answer questions 
  or generate new situations. Combined, the Action and Theme tables provide creative prompts suitable 
  for most situations and questions. In fact, with some creative interpretations, it’s entirely possible 
  to play with only these two tables."

  o = Oracle.new('Theme')
  puts o.get_oracle
end

def action
  puts "ORACLE: ACTION 
  Use this table to inspire a discovery, event, character goal, or situation. A roll on this table 
  can be combined with a Theme (see below) to provide an action and a subject. Then, interpret the 
  result based on the context of the question and your current situation."

  o = Oracle.new('Action')
  puts o.get_oracle
end

def goal
  puts "ORACLE: GOAL 
  Use this oracle to define the primary motivation of an NPC or a faction. It can also be used 
  to kick-off a personal quest for your own character."

  o = Oracle.new('Goal')
  puts o.get_oracle
end

def combat
  puts "ORACLE: COMBAT 
  Use this oracle to help inspire an action for an NPC in combat. 
  When you’re not sure what your foe will do next, particularly when they have initiative, 
  roll on this table and interpret the result as appropriate to your foe and the situation."

  o = Oracle.new('Combat')
  puts o.get_oracle
end

