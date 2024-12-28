alphabet = {a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9, j: 10, k: 11, l: 12, m: 13, n: 14, o: 15, p: 16, q: 17, r: 18, s: 19, t: 20, u: 21, v: 22, w: 23, x: 24, y: 25, z: 26}
value = gets.chomp # Corrected from chomb to chomp
shiftNum = gets.to_i # Removed unnecessary .chomb

def cipher(string, shift, alphabet)
  arrOfWord = string.split('')
  
  # Map characters and apply the cipher logic
  arrOfWord.map! do |char|
    if alphabet[char.to_sym] # Check if char exists in alphabet hash
      new_index = (alphabet[char.to_sym] + shift - 1) % 26 + 1
      alphabet.key(new_index) # Get the new shifted character
    else
      char # Return non-alphabetic characters as-is
    end
  end
  
  arrOfWord.join 
end

puts cipher(value, shiftNum, alphabet)
