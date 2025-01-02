# Dynamically generate the alphabet hashes
alphabet = ('a'..'z').each_with_index.map { |char, index| [char, index + 1] }.to_h
alphabet_upper = ('A'..'Z').each_with_index.map { |char, index| [char, index + 1] }.to_h

def cipher(string, shift, alphabet)
  arrOfWord = string.split('')
  
  # Map characters and apply the cipher logic
  arrOfWord.map! do |char|
    if alphabet[char.to_sym] # Check if char exists in alphabet hash
      new_index = (alphabet[char.to_sym] + shift - 1) % 26 + 1
      alphabet.key(new_index) # Get the new shifted character
    else
      char  # Leave non-alphabetic characters as-is
    end
  end.join 
end


# Input value and shift number
value = gets.chomp
shiftNum = gets.to_i
# Call cipher function and print the result

# Call cipher function and print the result

puts cipher(value, shiftNum, alphabet)
