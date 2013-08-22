#!/usr/bin/env ruby
#Purpose of Program 
puts "Welcome to Hangman! Let\'s play!"

#read in a list of words
word_bank = ["Stephanie", "Timothy"]
#choose a random word from word bank
answer = word_bank.sample

hint = answer.length
puts "The word is #{hint} letters long."
#prompt the user for a letter or a guess
puts "You have three guesses. Please begin by entering a letter."
guess = gets.chomp


#validate that the user entered a letter
# while guess < 3
#   if /[a-zA-Z]/.match(guess)
#     if guess 
#   
#   
#   
#   
#   
#   
#   else
#     puts "Please enter a letter"
# end
# 
# 







#while puzzle is not solved

  

  #If user guessed a letter, check to see if it's in the words

    #If letter is in word, fill it in

    #If letter is not in word, detract from number of guesses

  #If users guess word, check to see if it matches

  #If it matches, the game is won

  #If it does not match, the game continues and my guesses are decremented
