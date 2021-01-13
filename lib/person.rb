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
        self.hygiene += 4
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
        self.happiness += 2
        self.hygiene -= 3
        p "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        p "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            p "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            p "blah blah sun blah rain"
        else
            p "blah blah blah blah blah"
        end
    end

end

