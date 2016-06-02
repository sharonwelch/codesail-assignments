# Week 2: Homework: 99 Bottles of Beer on the Wall

# Instructions:
# Write a script that outputs the lyrics to 99 Bottles of Beer on the Wall (http://www.99-bottles-of-beer.net/lyrics.html)

# Sharon Welch
# June 1, 2016

def lyrics(n)
  if  n > 2
    # puts n bottles of beer on the wall, n bottles of beer.
    # Take one down and pass it around,n-1 bottles of beer on the wall.
    puts n.to_s  + " bottles of beer on the wall, " + n.to_s + " bottles of beer.
    Take one down and pass it around, " + (n - 1).to_s +  " bottles of beer on the wall."
  # because singular bottle becessary for 1
  elsif n == 2
    puts n.to_s  + " bottles of beer on the wall, " + n.to_s + " bottles of beer.
    Take one down and pass it around, " + (n - 1).to_s +  " bottle of beer on the wall."
  elsif n == 1
    puts n.to_s  + " bottle of beer on the wall, " + n.to_s + " bottle of beer.
    Take one down and pass it around, " + (n - 1).to_s +  " bottles of beer on the wall."
  else
    puts "No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, 99 bottles of beer on the wall."
  end
end

ary = Array(0..99)
ary.reverse!

ary.map do |n|
  lyrics(n)
end
