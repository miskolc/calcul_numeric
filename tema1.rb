require_relative "dependencies.rb"

def is_a_big_decimal? number 
  number.class.to_s == "BigDecimal"
end

class Fixnum
  include BigDecimalCompatible
end

class Float
  include BigDecimalCompatible
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