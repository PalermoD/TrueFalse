require 'csv'
require 'pry'

# Fact.destroy_all
# CSV.foreach('./false_facts.csv', :headers => true, :quote_char => "\x00") do |row|
        
#     name = row['FALSE_FACTS']
#     statement = false 
      
#     Fact.create(name: name, statement: statement)
# end 

# CSV.foreach('./facts.csv', :headers => true, :quote_char => "\x00" do |row|
        
#     name = row['FACTS']
#     statement = true 
 
#     Fact.create(name: name, statement: statement)
# end



Fact.destroy_all

text = File.open('./false_facts.txt').read
text.each_line { |line| Fact.create(name: line.delete('"'), statement: false) }

text = File.open('./facts.txt').read
text.each_line { |line| Fact.create(name: line.delete('"'), statement: true) }
