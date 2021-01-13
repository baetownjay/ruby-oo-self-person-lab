# your code goes here
require 'pry'



class Person
    attr_accessor :bank_account
    attr_reader :name

   
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def min_max(value)
        if value > 10
            value = 10
        elsif value < 0
            value = 0
        else
            value = value
        end
    end 

    def happy?
        if @happiness > 7
            happy = true
        else
            happy = false
        end
        happy
    end

    def clean?
        if @hygiene > 7
            clean = true
        else
            clean = false
        end
        clean
    end

    def happiness=(happiness)
        @happiness = min_max(happiness)
        

        
    end

    def happiness
        @happiness
    end

    def hygiene=(hygiene)
        @hygiene = min_max(hygiene)
        
    end

    def hygiene
        @hygiene
    end

    def get_paid(amount)
        @bank_account += amount
        p "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        hygiene=(@hygiene)
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
        @happiness += 2
        @hygiene -= 3
        @happiness = min_max(@happiness)
        @hygiene = min_max(@hygiene)
        p "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        #binding.pry
        #friend.new
    end

    def start_conversation(initiator, topic)
        if topic == "politics"
            @happiness -= 1
            min_max(@happiness)
        if topic == "weather"

            end
        end
    end

end

