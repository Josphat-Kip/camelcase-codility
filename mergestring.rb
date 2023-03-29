def merge_str(merge1, merge2)
  #iterating over the two strings
  (merge1.length).downto(1) do |i|
    #merge if end of the first string matches the start of the second string
    if merge1.end_with?(merge2[0, i])
      #If there is a matching, it returns merge1 with the rest of merge2 concatenated to it
      return merge1 + merge2[i..-1]
    end
  end
  #return merge1 followed by merge2 as there is no matching 
  merge1 + merge2
end

puts merge_str("abcde", "cdefgh")  # "abcdefgh"
puts merge_str("abaab", "aabab")  # "abaabab"
puts merge_str("abc", "def")  # "abcdef"
puts merge_str("abc", "abc")  # "abc"
