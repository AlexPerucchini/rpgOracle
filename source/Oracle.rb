########################################
# Oracle class
# included in Oracles.rb
########################################

class Oracle
  require 'sqlite3'

  def initialize(name)
    @name = name
  end

  def get_oracle
    begin
      db = SQLite3::Database.open "./database/rpgOracle.db"
      stm = db.prepare "SELECT name FROM #{@name}"
      rs = stm.execute   
      
      #take the result-set convert to an array and randomize the output
      return "#{@name.upcase}#{rs.to_a.sample}"
              
    rescue SQLite3::Exception => e 
      puts "Exception! #{e}"
  
    ensure
      stm.close if stm
      db.close if db
    end
  end
end