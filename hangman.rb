#!/usr/bin/env ruby
puts "Welcome to Hangman! Let\'s play!"
puts "You have ten guesses. Please begin by entering a letter."
input = gets.chomp


if !/[a-zA-Z]/.match(input)
  puts "Please enter a letter"
end




#create a word 'bank'
# word = [Stephanie]
#read in a list of words


#while puzzle is not solved

  #prompt the user for a letter or a guess

  #If user guessed a letter, check to see if it's in the words

    #If letter is in word, fill it in

    #If letter is not in word, detract from number of guesses

  #If users guess word, check to see if it matches

  #If it matches, the game is won

  #If it does not match, the game continues and my guesses are decremented
