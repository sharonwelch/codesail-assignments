# FizzbuzzDRY Practice

# Write a script that uses 3 different loops (eachdo, upto, and map do)
# to iterate over the numbers 1 to 1000, implementing the FizzBuzz rules

def fizzbuzz(n)
  if n%3 == 0 && n%5 == 0
    puts "FizzBuzz"
  elsif n%3 == 0
    puts "Fizz"
  elsif n%5 == 0
    puts "Buzz"
  else
    puts n
  end
end

1.upto(1000) do |n|
  fizzbuzz(n)
end

array = Array(1..1000)


array.map do |n|
  fizzbuzz(n)
end

array.each do |n|
  fizzbuzz(n)
end

def arraymap
  array = Array(1..1000)
  array.map do |n|
    fizzbuzz(n)
  end
end


a = Proc.new do |n|
  if n%3 == 0 && n%5 == 0
    puts "FizzBuzz"
  elsif n%3 == 0
    puts "Fizz"
  elsif n%5 == 0
    puts "Buzz"
  else
    puts n
  end
end

array.map do |n|
  a.call(n)
end


b = lambda do |n|
    fizzbuzz(n)
end

array.map do |n|
  b.call(n)
end
