require_relative "dependencies.rb"

class BigDecimal
  def function
    BigMath.log((self ** 2) + 1) - BigMath.exp(self * 0.4)*cos(self*PI()) 
  end
end

def bisectie a, b
  a = a.to_bd
  b = b.to_bd
  eps = 1E-10.to_bd

  return a if a.function == 0
  return b if b.function == 0
  if a.function * b.function > 0.to_bd
    puts "Nu exista solutie sau exista solutii multiple"
  end
  while b-a >= eps do
    c = (a+b)/2
    if c.function == 0
      puts c.humanize + " " + c.function.humanize
      return 0
    end
    if a.function * c.function < 0
      b = c
    else
      a = c
    end
  end

  puts c.humanize.ljust(30) + " " + c.function.humanize.ljust(30)
  return 0
end

puts "METODA BISECTOAREI".center 60
print "Singura radacina negativa: "
bisectie -1, 0
print "Cea mai mica radacina pozitiva: "
bisectie  0, 1
puts "Primele 20 de radacini pozitive: "

(0..19).each do |i|
  print " "
  bisectie i, i+1
end
