class Word < ActiveRecord::Base

  def self.anagrams(test_word)
    words_array = []
    Word.all.each do |word|
      if word.ordered == test_word.chars.sort.join.downcase
        words_array << word.name
      end
    end
    return words_array
  end
end


