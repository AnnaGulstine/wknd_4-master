# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module A

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

module B

  def square_root(number)
    Math.sqrt(number)
  end
end

class SimpleCalculator
  include A
end

class FancyCalculator

  include A
  include B

end

# Copy your driver code from the previous exercise below:
fancy = FancyCalculator.new
p fancy.square_root(9)
