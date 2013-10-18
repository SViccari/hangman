require 'pry'
#!/usr/bin/env ruby

#First attempt early in the cohort
def set_up_game
  word_bank = ["adventurous", "boston", "applesauce", "hangman", "developer"]
  @word = word_bank.shuffle.first
  @word_count = @word.length
  puts "This word has #{@word_count} letters."
  @guess_count = 10
  @count = 0
end

def print_lines
   @user_word || @user_word= @word.tr(@word, "_")
end

def check_guess(guess)
  @word.split(//).each_with_index do |char, index|
   if guess.downcase == char
     @user_word[index] = guess.downcase
   end
  end
end

def get_guess
  @guess = gets.chomp
  while !/[a-zA-Z]/.match(@guess)
    puts "Please enter a valid letter."
    @guess = gets.chomp
  end
  @guess
end

def play_turn
  puts print_lines
  get_guess  
  check_guess(@guess)
  @count += 1
    if @guess == @word
      puts "You win!"
      puts "Thanks for playing!"
      exit
    elsif @user_word == @word 
      puts "Congratulations, you've guessed the word!"
      exit 
    elsif @count == 10
      puts "You're out of chances, better luck next time..."
      puts "The hidden word was '#{@word}.'"
    else
  puts "You've used #{@count} guess."
  puts "Please guess a single letter (a-z) or the entire word."
    end
  end

def play_game
  while @user_word != @word && @count < @guess_count
   play_turn
  end
end

puts "Welcome to hangman! You have ten guesses."
puts "Please enter a letter a-z."
set_up_game
play_game


