#Complete the method called find_longest_word, which will accept a string as a
#parameter (usually a sentence), and return another string that will be the
#longest word in that sentence.

def find_longest_word(sentence)
non_letters = ["!", "@", "#", "$", "%", "&", "^", "*", "(", ")", "+", "-", "?"]
new = sentence.split("").delete_if {|letter| non_letters.include?(letter)}.join
new.split.sort_by{|word| word.length}[-1]

#using while loop: uncomment code below and comment code above to see it work.
  #words = sentence.split
  #longest_word = ""
    #i = 0
    #while i < words.length
      #each_word = words[i]
      #longest_word = each_word if each_word.length > longest_word.length
    #i += 1
    #end
    #longest_word
end

# Driver code - don't touch anything below this line.
puts "TESTING find_longest_word..."
puts

result = find_longest_word("What is the longest word in this phrase?")

puts "Your method returned:"
puts result
puts

if result == "longest"
  puts "PASS!"
else
  puts "F"
end
