=begin
When a new game is started, your script should load in the dictionary and
randomly select a word between 5 and 12 characters long for the secret word.

#You don’t need to draw an actual stick figure (though you can if you want to!),
but do display some sort of count so the player knows how many more incorrect
guesses he/she has before the game ends. You should also display which correct
letters have already been chosen (and their position in the word,
e.g. _ r o g r a _ _ i n g) and which incorrect letters have already been chosen.

#Every turn, allow the player to make a guess of a letter. It should be case
insensitive. Update the display to reflect whether the letter was correct or
incorrect. If out of guesses, the player should lose.

#Now implement the functionality where, at the start of any turn, instead of
making a guess the player should also have the option to save the game. Remember
 what you learned about serializing objects… you can serialize your game class too!

#When the program first loads, add in an option that allows you to open one of
your saved games, which should jump you exactly back to where you were when you
saved. Play on!

=end




class Game
  def initialize
    self.gen_rand_word

  end

  def gen_rand_word
    dic_array = []

    lines = File.readlines "5desk.txt"
    lines.each do |word|
      dic_array.push(word)
    end

    rand_no = rand(0..dic_array.length-1) #creates rand number within array index length
    rand_word = dic_array[rand_no] #chooses random word from random number
    rand_word_length = rand_word.strip.length

    until rand_word_length > 4 && rand_word_length < 13 # checks rand word is between 5 and 12 letters
      rand_no = rand(0..dic_array.length-1)
      rand_word = dic_array[rand_no]
      rand_word_length = rand_word.strip.length
    end

    puts rand_no
    puts rand_word
    puts rand_word_length
  end



end

class Display
  def initialize

  end

end

game = Game.new
