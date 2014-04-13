require_relative "dependencies.rb"

class BigDecimal
  def function
    BigMath.log((self ** 2) + 1) - BigMath.exp(self * 0.4)*cos(self*PI()) 
  end
end


number = 2.to_bd

print number.humanize
print "\n"