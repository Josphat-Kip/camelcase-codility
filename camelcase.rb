class String
    def caps
        #taking the given string and splitting it into array of words
        word = self.split
#iterating through the array and capitalizing each word
        word.length.times do |i|
            word[i].capitalize!
        end
    #joining array back into strings
      word.join
    end
end

  puts  "There is a long walk to freedom".caps