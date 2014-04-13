require_relative "../dependencies.rb"

number = BigDecimal.new("2")

number = 1.to_bd + number
assert(is_a_big_decimal?(number), "1BigDecimal a fost convertit in #{number.class}")
number = 1.0.to_bd + number
assert(is_a_big_decimal?(number), "2BigDecimal a fost convertit in #{number.class}")
print number.function
print "\n"