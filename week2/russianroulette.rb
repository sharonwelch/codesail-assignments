# Week 2: Homework: Russian Roulette, Abridged

# Instructions:
# Write a script that lets a user know there are six barrels to a gun with one live bullet, and that they're playing with a computer.
# The barrel with the bullet is selected at random.
# The user goes first. The user may choose how many fires to take or pass and allow the computer to choose the number of shots to take, and the user would have to take the remaining shots.
  # Example:
    # If the user chooses to go first, and the user choose '1'. Then the user will take the first shot, pass the gun, and the computer will take the remaining 5 shots.
    # If the user chooses to pass, and the computer chooses '1'. Then the user will take the remaining five shots.
# The person who lands on the live bullet loses. Indicate to the user who the loser and winner is.

# To generate a random number between 1 and 6, you can use the shuffle method for an array or rand(1..6)


puts "You are playing Russian Roulette with a computer."
puts "There are six barrels to a gun with one live bullet."

puts "How many shots do you want to take? Or will you pass?"
userinput = gets.chomp
userinput = userinput.downcase
userinput = userinput.to_s

livebullet = rand(1..6)
livebullet = livebullet.to_s

if userinput == "pass"
  # livebullet = rand(1..6)
  # livebullet.to_s

  rand = rand(1..6)
  rand.to_s
  ary1 = Array(1..rand)

  ary1.map do |x|
    x = x.to_s
    if x <= rand && x != livebullet
      puts "Computer still alive :)"
    elsif x <= rand && x == livebullet
      puts "You win, computer loses"
    elsif x > rand && x != livebullet
      puts "Still alive :) :)"
    elsif x > rand && x == livebullet
      puts "You lose, computer wins"
    end
  end

else
  ary2 = Array(1..6)
  ary2.map do |x|
    x = x.to_s
    if x <= userinput && x != livebullet
      puts "Still alive :)"
    elsif x <= userinput && x == livebullet
      puts "You lose, computer wins"
    elsif x > userinput && x == livebullet
      puts "You win, computer lose"
    end # ifelse
  end # map do
end # ifelse
