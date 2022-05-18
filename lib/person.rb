# your code goes here
class Person 
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    #if(happiness > 10) 
    #  @happiness = 10
    #elsif(happiness < 0)
    #  @happiness = 0
    #else @happiness = happiness
    #end
    @happiness = num.clamp(0, 10)
  end

  def hygiene=(num)
    @hygiene = if(num > 10)
                10
               elsif(num < 0)
                0
               else    
                num
               end
  end

  def happy?
    self.happiness > 7
  end
  
  def clean?
    self.hygiene > 7
  end

  def get_paid(amount)
    self.bank_account += amount
    'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    '♪ another one bites the dust ♫'
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when 'politics'
      [self, person].each { |el| el.happiness -= 2 }
      'blah blah partisan blah lobbyist'
    when 'weather'
      self.happiness += 1
      person.happiness += 1
      'blah blah sun blah rain'
    else 'blah blah blah blah blah'
    end
  end
end
