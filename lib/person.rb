# your code goes here
class Person
  attr_reader(:name, :happiness, :hygiene)
  attr_accessor(:bank_account, :salary)
    def initialize(name, bank_account=25, happiness=8, hygiene=8, salary=0)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @salary = salary
    @hygiene = hygiene
    end

    def happiness=(happiness)
      #if current happiness...
      if happiness > 10
      # set current happiness to...
        @happiness = 10
      elsif happiness < 0
        @happiness = 0
      else
        @happiness = happiness
      end
      @happiness
    end

    def hygiene=(hygiene)
      if hygiene > 10
        @hygiene = 10
      elsif hygiene < 0
        @hygiene = 0
      else
      @hygiene = hygiene
      end
      @hygiene
    end

    def clean?
        if self.hygiene > 7
          return true
        else
          false
        end
    end

    def happy?
        if self.happiness > 7
          return true
        else
          false
        end
    end

    def get_paid(salary)
      self.bank_account += salary
      return "all about the benjamins"
    end

    def take_bath
      self.hygiene += 4
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      self.happiness +=2
      self.hygiene -=3
      return "♪ another one bites the dust ♫"

    end



    def call_friend(friend)
      # #accepts friend as arg

      # increments caller and callee's happiness points by 3
      self.happiness +=3
      friend.happiness +=3
      # returns "Hi #{callee}! It's #{caller}. How are you?"
      return "Hi #{friend.name}! It's #{self.name}. How are you?"

    end

    def start_conversation(friend, topic)
      if topic == "politics"
        friend.happiness -= 2
        self.happiness -=2
        return "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        friend.happiness += 1
        self.happiness += 1
        return "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
      end

    end

end
