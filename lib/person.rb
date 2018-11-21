class Person

attr_accessor :bank_account
attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name=name
    @bank_account=25
    @happiness=8
    @hygiene=8
  end

  def happiness=(happiness)
    @happiness=happiness
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
  end

  def hygiene=(hygiene)
    @hygiene=hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  def get_paid(salary)

    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath

    self.hygiene += 4

    return "♪ Rub-a-dub just relaxing in the tub ♫"

  end

  def work_out

self.hygiene -= 3
self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(name)
    self.happiness += 3
name.happiness += 3


return "Hi #{name.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(name, topic)
    response = ""
 if topic == "politics"
   self.happiness -=2
   name.happiness -=2
   response << "blah blah partisan blah lobbyist"

 elsif topic == "weather"
self.happiness += 1
name.happiness += 1
response << "blah blah sun blah rain"
else

   response << "blah blah blah blah blah"
end
return response
end

end
