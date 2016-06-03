# Practice
# Write a class for Fractions that takes in two arguments, a numerator and denominator
# - create a method that returns a decimal
# - methods that returns a string
# - method that returns reduced string form
# - denom != 0 or float

puts "Please input a numerator"
numer = gets

puts "Please input a denominator"
denom = gets

class Fractions
  attr_accessor :numerator, :denominator
  def initialize(numer, denom)
    @numerator = numer
    @denominator = denom
  end
  ##def math
    def divdec
      if denominator != 0
        numerator/denominator.to_f
      else
        puts "Cannot divide by 0"
      end
    end

    def divstring
      inumerator = numerator.to_i
      idenominator = denominator.to_i
      if denominator != 0
        snumerator = inumerator.to_s
        sdenominator = idenominator.to_s
        puts snumerator + "/" + sdenominator
      else
        puts "Cannot divide by 0"
      end
    end

    def divredstring
      inumerator = numerator.to_i
      idenominator = denominator.to_i
      red = inumerator.gcd(idenominator)

      if denominator != 0
        lnumerator = inumerator/red
        ldenominator = idenominator/red
        snumerator = lnumerator.to_s
        sdenominator = ldenominator.to_s
        puts snumerator + "/" + sdenominator
      else
        puts "Cannot divide by 0"
      end
    end
end
