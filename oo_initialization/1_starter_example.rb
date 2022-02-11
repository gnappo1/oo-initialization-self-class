require 'pry'
#execute this file by typing: ruby 1_starter_example.rb 

class Planet #always capitalized for class names
    def initialize(name:, radius:, rot_time:, rev_time:, atm:true, mass:, age:)
        @name, @radius, @rot_time, @rev_time, @atm, @mass, @age = name, radius, rot_time, rev_time, atm, mass, age
    end
   
end

# venus = Planet.new("Venus", 4.87, -5832.5, 224.7, 6052, 543)
earth = Planet.new(mass: 5.97, name: "Earth", rot_time: 24, rev_time: 365, age: 1, radius: 6378.1)
 #=> #<Planet:0x00007ff28801db78> shows the class the object belongs to and the object_id
#there are no attributes setup at birth and therefore no need for the initialize
#our instances still have no behavior (methods)

binding.pry