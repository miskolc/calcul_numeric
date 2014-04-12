require 'bigdecimal'
require "bigdecimal/math"

include BigMath

def assert(expression, message)
  puts expression
  if(expression)
    return
  else
    puts message
  end
end

def is_a_big_decimal?(number)
  number.class.to_s == "BigDecimal"
end

class Fixnum
  def to_bd
    BigDecimal.new(self.to_s)
  end
end

class Float
  def to_bd
    BigDecimal.new(self.to_s)
  end
end

class BigDecimal

  def function
    log(exp(self,2) + 1) - exp(E, self * 0.4)*cos(self*PI) 
  end
end
number = BigDecimal.new("2")

puts number.class
number = 1.to_bd + number
assert(is_a_big_decimal?(number), "1BigDecimal a fost convertit in #{number.class}")
number = 1.0.to_bd + number
assert(is_a_big_decimal?(number), "2BigDecimal a fost convertit in #{number.class}")
print number.function
print "\n"