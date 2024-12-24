alphabet = {a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9, j: 10, k: 11, l: 12, m: 13, n: 14, o: 15, p: 16, q: 17, r: 18, s: 19, t: 20, u: 21, v: 22, w: 23, x: 24, y: 25, z: 26}

value = gets.chomb
shiftNum = gets.to_i.chomb

cipher(value,shiftNum)

def cipher(string,shift = 0,alphabet) 
  arrOfWord = string.split('')

   
  arrOfWord.map! do |char|
    if alphabet[char.to_sym]
      new_index = (alphabet[char.to_sym] + shift - 1) % 26 + 1
      alphabet.key(new_index)
    else
      char
    end

  end
  puts arrOfWord.join

end

cipher(value, shiftNum, alphabet)
