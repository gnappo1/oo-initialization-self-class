require "pry"

puts self # I am outside of a class, so I am main

class Human
    attr_accessor :name
    @@humans = []

    def initialize(name)
        self.name = name
        save
    end

    def save
        self.class.humans << self
    end

    # def self.humans # I am class because of self
    #     @@humans
    # end

    class << self # I also create class methods
        def humans
            @@humans
        end

    end

    def self.human_count
        "In total, we have #{humans.length} humans"
    end



    def introduce
        "Hello, my name is #{name} and I am one of #{self.class.humans.length}"
    end

    def say_hello
        self.introduce
    end

end

matteo = Human.new("Matteo") # Identify .new as a class method because it is called on the class Human
binding.pry
