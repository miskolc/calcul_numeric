require 'bigdecimal'
require "bigdecimal/math"

include BigMath

module BigMath

  self.singleton_class.send(:alias_method,:original_log,:log)
  self.singleton_class.send(:alias_method,:original_exp,:exp)
  alias_method :original_cos, :cos
  alias_method :Original_PI, :PI

  def self.log x, prec=100
    self.original_log x,prec 
  end

  def self.exp x, prec=100
    self.original_exp x, prec 
  end
  
  def cos x, prec=100
    original_cos x,prec 
  end 

  def PI prec=100
    Original_PI prec
  end

end

def assert expression, message
  puts expression
  if expression 
    return
  else
    puts message
  end
end

def is_a_big_decimal? number 
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

  @precision = 100
   
  def function
    BigMath.log((self ** 2) + 1) - BigMath.exp(self * 0.4)*cos(self*PI()) 
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