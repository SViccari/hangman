#!/usr/bin/env ruby
#Purpose of Program 
puts "Welcome to Hangman! Let\'s play!"

#read in a list of words
word_bank = ["Stephanie", "Timothy"]
#choose a random word from word bank
answer = word_bank.sample

    answer.each_char do |x|
      print " _"
    end
  
#prompt the user for a letter or a guess
puts "   You have three guesses. Please begin by entering a letter."
    
guess_count = 0

while guess_count < 3
  guess = gets.chomp.to_s
  if !/[a-zA-Z]/.match(guess)
    puts "Don't be crazy. Please enter a letter."
  else
    puts "great job!"
 end
end




# 



#while puzzle is not solved


  #If user guessed a letter, check to see if it's in the words

    #If letter is in word, fill it in

    #If letter is not in word, detract from number of guesses

  #If users guess word, check to see if it matches

  #If it matches, the game is won

  #If it does not match, the game continues and my guesses are decremented