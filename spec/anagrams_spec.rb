require('rspec')
require('anagrams')
require('pry')

describe('#Anagram_checker')  do
 it("returns true if the two words inputted are anagrams") do
   compare_words = EvaluateWord.new("tea", "eat")
   expect(compare_words.anagram?()).to(eq("These words or phrases are anagrams of eachother but don't form a palindrome."))
 end
 it("accounts for entries of different cases") do
   compare_words = EvaluateWord.new("Tea", "eAt")
   expect(compare_words.anagram?()).to(eq("These words or phrases are anagrams of eachother but don't form a palindrome."))
 end
 it("checks whether two words are palindromes") do
   compare_words = EvaluateWord.new("Tarawa", "A war at")
   expect(compare_words.anagram?()).to(eq("These words or phrases are anagrams of eachother and form a palindrome."))

 end
 # it("checks to make sure that each word contains a vowel") do
 # compare_words EvaluateWord.new("Tarawa", "A war at")
 # expect(compare_words.anagram?()).to(eq("One or more of your entries contained text that are not words"))
 # end


end
