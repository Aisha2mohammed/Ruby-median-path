# Dynamically generate the alphabet hashes
alphabet = ('a'..'z').each_with_index.map { |char, index| [char, index + 1] }.to_h
alphabet_upper = ('A'..'Z').each_with_index.map { |char, index| [char, index + 1] }.to_h

def cipher(string, shift, lower_alphabet, upper_alphabet)
  string.chars.map do |char|
    if lower_alphabet[char] # Check if lowercase
      new_index = (lower_alphabet[char] + shift - 1) % 26 + 1
      lower_alphabet.key(new_index)
    elsif upper_alphabet[char] # Check if uppercase
      new_index = (upper_alphabet[char] + shift - 1) % 26 + 1
      upper_alphabet.key(new_index)
    else
      char # Leave non-alphabetic characters as-is
    end
  end.join
end

value = gets.chomp
shiftNum = gets.to_i

puts cipher(value, shiftNum, alphabet, alphabet_upper)
