# # your code goes here
# class Person
#     attr_reader :name
#     attr_accessor :bank_account, :happiness, :hygiene
#     def initialize(name)
#         @name = name
#     end
    
#     def bank_account (val = 25)
#         @bank_account = val
#     end

#     def happiness (val = 8)
#         val<0||val>10 ? (raise "Invalid happiness value (0-10)") : @happiness = val
#     end

#     def hygiene (val = 8)
#         @hygiene = val
#     end

#     def clean?
#         @hygiene>7 ? true : false
#     end

#     def happy?
#         @happiness>7 ? true : false
#     end

#     def get_paid(amount)
#         self.bank_account += amount
#         puts "all about the benjamins"
#     end

#     def take_bath
#         @hygiene > 6 ?( @hygiene = 10) : (@hygiene += 4)
#         puts "♪ Rub-a-dub just relaxing in the tub ♫".
#     end

#     def work_out
#         @happiness > 8 ? (@happiness = 10; @hygiene -= 3) : (@happiness += 2; @hygiene -= 3)
#         puts "♬ another one bites the dust ♫"
#     end

#     def call_friend(friend)
#         friend = Person.new(friend)
#         self.happiness > 7 ? (self.happiness = 10) : (self.happiness += 3)
#         friend.happiness > 7 ? (friend.happiness = 10) : (friend.happiness += 3)
#         puts "Hi #{friend.name}! It's #{self.name}. How are you?"
#     end

#     def start_conversation(friend, topic)
#         friend = Person.new(friend)
#         topic == "politics" ? (self.happiness -= 2; friend.happiness -= 2; return "blah blah partisan blah lobbyist") :
#         (topic == "weather" ? (self.happiness += 1; friend.happiness += 1; return "blah blah sun blah rain") :
#         (return "blah blah blah blah blah"))
#     end

# end

# str = Person.new("str")
# puts str.call_friend("rst")

class Person
        attr_reader :name
        attr_accessor :bank_account, :happiness, :hygiene
        def initialize(name)
            @name = name
            @bank_account = 25
            @happiness = 8
            @hygiene = 8
        end

        def bank_account=(val)
            @bank_account = val
        end

        def happiness=(val)
            if (val < 0 )
                return @happiness = 0
            elsif (val > 10)
                return @happiness = 10
            end
            @happiness = val
        end

        def hygiene=(val)
            if (val < 0 )
                return @hygiene = 0
            elsif (val > 10)
                return @hygiene = 10
            end
            @hygiene = val
        end

        def clean?
          @hygiene > 7 ? true : false
        end

        def happy?
          @happiness > 7 ? true : false
        end

        def get_paid(amount)
            self.bank_account += amount
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

        def call_friend (friend)
            self.happiness += 3
            friend.happiness += 3
            "Hi #{friend.name}! It's #{self.name}. How are you?"
        end

    def start_conversation(friend, topic)
        topic == "politics" ? (self.happiness -= 2; friend.happiness -= 2; return "blah blah partisan blah lobbyist") :
        topic == "weather" ? (self.happiness += 1; friend.happiness += 1; return "blah blah sun blah rain") :
        (return "blah blah blah blah blah")
    end
end

felix = Person.new("felix")
str = Person.new("str")

str.call_friend(felix)

puts str.call_friend(felix)