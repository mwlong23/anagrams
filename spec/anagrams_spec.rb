require('rspec')
require('anagrams')
require('pry')

describe('#Anagram_checker')  do
 it("returns true if the two words inputted are anagrams") do
   compare_words = EvaluateWord.new("tea", "eat")
   expect(compare_words.anagram?()).to(eq(true))
 end
 it("accounts for entries of different cases") do
   compare_words = EvaluateWord.new("Tea", "eAt")
   expect(compare_words.anagram?()).to(eq(true))
 end
end
