require('pry')

class EvaluateWord
  attr_reader(:first_word, :second_word)
  def initialize (first_word,second_word)
    @first_word = first_word
    @second_word = second_word
  end


  def anagram?


    first_word_key = @first_word.downcase.split('').sort.join('')
    second_word_key = @second_word.downcase.split('').sort.join('')
    if first_word_key == second_word_key && @first_word.length == @second_word.length
       true
    else
       false
    end

  end
end


puts "Please enter your first word"
first_entry = gets.chomp
puts "Please enter your second word"
second_entry = gets.chomp
word_entries = EvaluateWord.new(first_entry,second_entry)
puts word_entries.anagram?()
