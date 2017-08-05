=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yell_happily(words)
    words + "!!!" + " :)"
  end
end

# Test 
Shout.yell_angrily("%+*@?")
Shout.yell_happily("Heyyy")
=end

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  def yell_happily(words)
    words + "!!!" + " :)"
  end
end

class People1
	include Shout
end

class People2
	include Shout
end

person1 = People1.new
person1.yell_happily("Yeaah")

person2 = People2.new
person2.yell_angrily("Nooo")
