# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

class SimpleCalculator

  attr_reader :first_number, :second_number
  
  def initialize(first_number: first_number, second_number: second_number)
    @first_number = first_number
    @second_number = second_number
  end

  def add
    @first_number + @second_number
  end

  def subtract
    @first_number - @second_number
  end

  def multiply
    @first_number * @second_number
  end

  def divide
    @first_number / @second_number
  end

end

class FancyCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def hypotenuse
    Math.hypot(@first_number, @second_number)
  end
  
  def exponent(exponent_number)
    total = 1
    exponent_number.times { total = (total * @first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:
simple = SimpleCalculator.new(first_number: 21, second_number: 7)
fancy = FancyCalculator.new(first_number: 81, second_number: 9)
p fancy.square_root(122)
bang = WhizBangCalculator.new(first_number: 2, second_number: 11)
p bang.exponent(4)

