require('pry')

class EvaluateWord
  attr_reader(:first_phrase, :second_phrase)
  def initialize (first_phrase,second_phrase)
    @first_phrase = first_phrase.downcase
    @second_phrase = second_phrase.downcase
    @first_phrase_array = @first_phrase.split(' ')
    @second_phrase_array = @second_phrase.split(' ')
  end

  def antigram?
    # joins words of input and removes non-alpha characters and spaces
    # returns an array of unique alpha characters
    first_array = @first_phrase_array.join('').gsub(/[^a-zA-Z]/i, '').split('').uniq


    # joins words of input and removes non-alpha characters and spaces
    # returns an array of unique alpha characters
    second_array = @second_phrase_array.join.gsub(/[^a-zA-Z]/i, '').split('').uniq

    antigram_array = []

    for i in 1..first_array.length do
      second_array.each do |array_element|
        if array_element.include?(first_array[i-1].to_s)
          antigram_array.push(1)
        else
          antigram_array.push(0)
        end
      end
    end
    if antigram_array.reduce(:+) < 1
      true
    else
      false
    end
  end

  def word?
    combined_inputs = @first_phrase_array +  @second_phrase_array
    input_is_not_word=[]

    for i in 1..combined_inputs.length do
     if  combined_inputs[(i-1)] !~ /[aeiouy]/
       input_is_not_word.push(1)
     else
       input_is_not_word.push(0)
      end
    end


    if input_is_not_word.reduce(:+) > 0
      false
    else
      true
    end
  end

  def anagram?
    first_phrase_key = @first_phrase.gsub(/\s+/, "").split('').sort.join('')
    second_phrase_key = @second_phrase.gsub(/\s+/, "").split('').sort.join('')
    if first_phrase_key == second_phrase_key
      if @first_phrase.reverse.split(' ').join('') == @second_phrase_array.join('')
        "These words or phrases are anagrams of eachother and form a palindrome."
      else
        "These words or phrases are anagrams of eachother but don't form a palindrome."
      end
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
#   puts puts word_entries.word?()
#   puts word_entries.anagram?
#   puts "Press 'y' if you would like to play again, 'n' to quit"
#   repeat = gets.chomp
#   if repeat == 'n'
#     break;
#   end
# end
