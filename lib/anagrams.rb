require('pry')

class EvaluateWord
  attr_reader(:first_phrase, :second_phrase)
  def initialize (first_phrase,second_phrase)
    @first_phrase = first_phrase.downcase
    @second_phrase = second_phrase.downcase
    @first_phrase_array = @first_phrase.split(' ')
    @second_phrase_array = @second_phrase.split(' ')
  end



  # def word?
  #   puts  first_phrase_array = first_word.downcase.split(' ')
  #   puts  second_phrase_array = second_word.downcase.split(' ')
  #
  #   for i in 1..second_phrase_array.length do
  #    if  second_phrase_array[(i-1)] !~ /[aeiouy]/
  #      puts "word"
  #    else
  #      puts second_phrase_array[(i-1)], "is not a word"
  #     end
  #   end
  # end

  def anagram?

    first_phrase_key = @first_phrase.gsub(/\s+/, "").split('').sort.join('')
    second_phrase_key = @second_phrase.gsub(/\s+/, "").split('').sort.join('')
    if first_phrase_key == second_phrase_key
      if @first_phrase.reverse.split(' ').join('') == @second_phrase_array.join('')
        "These words or phrases are anagrams of eachother and form a palindrome."
      else
        "These words or phrases are anagrams of eachother but don't form a palindrome."
      end
    # elsif

    else
       "This word or phrase is neither a word or palindrome."
    end
  end
end


# loop do
#   puts "Please enter your first word or phrase"
#   first_entry = gets.chomp
#   puts "Please enter your second word"
#   second_entry = gets.chomp
#
#   word_entries = EvaluateWord.new(first_entry,second_entry)
#   puts word_entries.anagram?
#   puts "Press 'y' if you would like to play again, 'n' to quit"
#   repeat = gets.chomp
#   if repeat == 'n'
#     break;
#   end
# end
