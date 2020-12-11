# your code goes here

class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(new_happiness)
        if new_happiness.between?(0, 10) == true
            @happiness = new_happiness
        elsif new_happiness > 10
            @happiness = 10
        else
            @happiness = 0
        end 
    end 


    def hygiene=(new_hygiene)
        if new_hygiene.between?(0, 10) == true
            @hygiene = new_hygiene
        elsif new_hygiene > 10
            @hygiene = 10
        else
            @hygiene = 0
        end 
    end

    def clean?
        if @hygiene > 7
            return true 
        else 
            return false 
        end 

    end 

    def happy? 
        if happiness > 7 
            return true 
        else 
            return false 
        end 
    end 

    def get_paid(salary)
        @bank_account = self.bank_account + salary
        "all about the benjamins"
    end 

    def take_bath 
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out 
        self.happiness += 2 
        self.hygiene -= 3 
        "♪ another one bites the dust ♫"
    end

    def call_friend (friend) #accepts another instance of person 
        self.happiness += 3 
        friend.happiness +=3 

        if friend.equal?(self.name)
            "Hi #{self.name}! It's #{friend.name}. How are you?"
        else
            "Hi #{friend.name}! It's #{self.name}. How are you?"
        end
    end 

    def start_conversation (person_starting_convo, convo_topic)
        if convo_topic == "politics"
            self.happiness -= 2
            person_starting_convo.happiness -= 2 
            "blah blah partisan blah lobbyist"
        
        elsif convo_topic == "weather"
            self.happiness += 1 
            person_starting_convo.happiness += 1
            "blah blah sun blah rain"

        else
            "blah blah blah blah blah"
        end 
    end 

end