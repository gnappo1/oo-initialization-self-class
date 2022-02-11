class Human

    ####### IMPLICIT SELF CATCH 1 ############
    attr_accessor :name
    ##########################################

    def initialize(name)
        @name = name
    end
    def self.class_method 
        p "class method"
    end

    def introduce
        ####### IMPLICIT SELF CATCH 2 ############
        puts "Hello, I am #{name}"
        self.class.class_method
        ###########################################
    end


    def introduce_and_ask_for_introduction
        ####### IMPLICIT SELF CATCH 2 ############
        introduce
        
        ##########################################
        puts "And you are...?"
    end


    def you_cant_confuse_me
        introduce 
        self.introduce
    end

end
Human.new("Matteo").you_cant_confuse_me