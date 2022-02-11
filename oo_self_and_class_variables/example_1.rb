require "pry"
puts "first self outside of the class"
puts self #main:Object
class Human

    ###### SELF REFERENCE 1 (LO 1) #######
    puts "second self inside of the class"
    puts self 
    #this is the entire class, since self has been used outside of any methods but inside the class itself
    class << self
        def test_method
            "I'm also class!"
        end
    end
    ####### SELF REFERENCE 2 (LO 1, 3)########
    def self.new_from_hash(hash)
    #################################

        ###### SELF REFERENCE 2 (LO 1)#######
        puts "third self inside of the class and inside a class method"

        puts self
        #self will be Class since we're inside a class method
        ################################

        ##### SELF REFERENCE 3 (LO 1)##########
        self.new(hash[:name], hash[:age])
        ##################################
    end

    attr_accessor :name, :age

    def initialize(name, age)
        @name, @age = name, age
        ##### SELF REFERENCE 4 (LO 1)##########
        puts "fourth self inside of the class and inside an instance method"
        puts self
        # self will be the instance the method operates on
        #########################################
    end

    def introduce
        ##### SELF REFERENCE 5 (LO 1, 2)##########
        puts "Hi, my name is #{self.name} and my age is #{self.age}"
        #############################################
    end

end

cernan = Human.new_from_hash({name: "Cernan", age: 29})
matteo = Human.new("Matteo", 29)
matteo.introduce
binding.pry
Human.test_method