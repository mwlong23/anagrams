require('rspec')
require('anagrams')
require('pry')

describe('#Anagram_checker')  do
 it("returns true if the two words inputted are anagrams") do
 words_to_compare = EvaluateWord.new("tea", "eat")
 expect(words_to_compare.anagram?()).to(eq(true))
 end
end
