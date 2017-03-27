# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

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

class SimpleCalculator
  include SimpleMath
end

class FancyCalculator
  include SimpleMath
  
  def square_root(number)
    Math.sqrt(number)
  end
end

# Copy your driver code from the previous exercise below:

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
puts "Testing that SimpleCalculator doesn't have square_root method..."
  if simple1.square_root(9) == 3
    puts "FAIL!!"
  else
    puts "PASS"
  end
