class Word < ActiveRecord::Base

  def self.anagrams(test_word)
    words_array = []
    Word.where("ordered= ?", test_word.chars.sort.join.downcase).each do |word|
        words_array << word.name
      end
    return words_array
  end
end





