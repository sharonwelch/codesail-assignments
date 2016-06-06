# Week 2: Homework: Choose Your Adventure

# Instructions:
# Write a script that lets a user know that she is going on an adventure.
# Create a story that can be as elaborate as you like that uses various user inputs.

#I have two questions
#How to call the method success within my if else statements
#and whether there is a cleaner way to let them re-enter their answer 

def success
  puts "#{catname}! #{catname}! Look there they are! Yay we found #{catname}.\n
  Congratualtions you won, and you're reunited with your cat"
end

puts "Hi! What is your name?"
username = gets.chomp.strip.capitalize
puts "Welcome #{username}! You are going to go on an adventure to find your friend's lost cat.
We will help you look based on the information provided about the cat."
puts "What is your cat's name?"
catname = gets.chomp.strip.capitalize

puts "Does the cat like to stay \n inside\n or\n outside?"
userindout = gets.chomp.strip
if userindout == "inside"
  puts "Okay let's look inside"
  puts "How big is your cat?"
  catsize = gets.chomp.strip
  puts "Does #{catname} prefer to sleep in the office, bathroom, or bedroom?"
  room = gets.chomp.strip
  if room == "office"
    puts "Oh look, they fell asleep in the #{catsize}trashcan"
    #success
  elsif room == "bathroom"
    puts "They fell asleep in the #{catsize} toilet"
    #success
  elsif room == "bedroom"
    puts "#{catname} is under the pillow."
    #success
  else
    puts "Please re-enter. Does #{catname} prefer the office, bathroom, or bedroom?"
    roomtry2 = gets.chomp.strip
    if roomtry2 == "office"
      puts "Oh look, they fell asleep in the #{catsize}trashcan"
      #success
    elsif roomtry2 == "bathroom"
      puts "They fell asleep in the #{catsize} toilet"
      #success
    elsif roomtry2 == "bedroom"
      puts "#{catname} is under the pillow."
      #success
    end
  end
elsif userindout == "outside"
  puts "Okay let's go outside"
  puts "Does #{catname} have a friend cat in the neighborhood?"
  catfriend = gets.chomp.strip.downcase
    if catfriend == "yes"
      puts "Where does that cat live?"
      catfriendhouse = gets.chomp.strip
      puts "Let's look #{catfriendhouse}"
      #success
    elsif catfriend == "no"
      puts "What is #{catname}'s' favorite place to hang out?"
      hangout = gets
      puts "What type of things are there? (ex: trees, swings, a slide)"
      things = gets.chomp.strip
      things2 = things.split(",")
      puts "Okay, let's go to #{hangout}"
      puts "What color is your cat?"
      catcolor = gets.chomp.strip
      coloritem = things2.sample
      puts "I think your #{catcolor} cat #{catname} is camouflaged into the #{catcolor} #{coloritem}"
      #success #I want this to call the success method but can't figure out how
    else
      puts "I know that this is a hard time, but please answer 'yes' or 'no' so that we can find your cat"
      catfriendtry2 = gets.chomp.strip
      if catfriendtry2 == "yes"
        puts "Where does that cat live?"
        catfriendhouse = gets.chomp.strip
        puts "Let's look #{catfriendhouse}"
        #success
      elsif catfriendtry2 == "no"
        puts "What is #{catname}'s' favorite place to hang out?"
        hangout = gets
        puts "What type of things are there? (ex: trees, swings, a slide)"
        things = gets.chomp.strip
        things2 = things.split(",")
        puts "Okay, let's go to #{hangout}"
        puts "What color is your cat?"
        catcolor = gets.chomp.strip
        coloritem = things2.sample
        puts "I think your #{catcolor} cat #{catname} is camouflaged into the #{catcolor} #{coloritem}"
        #success #I want this to call the success method but can't figure out how
    end
else
  puts "You'll have to try again later when you can tell me if your cat stays inside or outside.\n
  We can't go on the adventure until then."
end
