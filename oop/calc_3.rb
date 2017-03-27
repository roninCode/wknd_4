# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

module SimpleMath
  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end
end

module SqRoot
  def square_root(number)
    Math.sqrt(number)
  end
end



class SimpleCalculator
  include SimpleMath
end

class FancyCalculator
  include SimpleMath
  include SqRoot
end

class WhizBangCalculator
  include SimpleMath
  include SqRoot

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

puts "TESTING calculators!"
puts
puts "Testing add method in SimpleCalculator..."
simple1 = SimpleCalculator.new
  if simple1.add(2, 5) == 7
    puts "PASS"
  else
    puts "FAIL!!!"
  end

puts 
puts "Testing add method in FancyCalculator..."
fancy1 = FancyCalculator.new
  if fancy1.add(5, 10) == (15)
    puts "PASS"
  else
    puts "FAIL!!!"
  end

puts
puts "Testing square_root method in FancyCalculator..."
  if fancy1.square_root(9) == 3
    puts "PASS"
  else
    puts "FAIL!!!"
  end

puts
# puts "Testing that SimpleCalculator doesn't have square_root method..."
#   if simple1.square_root(9) == 3
#     puts "FAIL!!"
#   else
#     puts "PASS"
#   end

puts "Testing WhizBangCalculator hypotenuse method..."
whiz1 = WhizBangCalculator.new
  if whiz1.hypotenuse(3, 4) == 5
    puts "PASS!!!"
  else
    puts "FAIL!!!"
  end
puts

puts "Testing WhizBangCalculator exponent method..."
 if whiz1.exponent(2, 3) == 8
  puts "PASS!!"
else
  puts "FAIL!!"
end

