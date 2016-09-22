module FunWithStrings
  def palindrome? 
    if self.downcase.reverse.gsub(/\W/, "") == self.downcase.gsub(/\W/, "")
      true
    else
      false
    end
  end
  
  def count_words
    word_arr = self.downcase.split(' ')
    word_arr.each do |x|
      x = x.gsub!(/\W/, "")
    end
    word_arr.delete("")
    word_count = {}
    word_arr.each do |word|
      if word_count[word] == nil 
        word_count[word] = 1
      else
        word_count[word] += 1
      end
    end
    return word_count
  end
  
  def anagram_groups
    word_arr = self.split(" ")
    ana_arr ={}

    word_arr.each do |word|
      x = word.split('').sort.join
      if ana_arr[x] == nil
        ana_arr[x] = []
      end
      ana_arr[x] << word
    end

    return ana_arr.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
