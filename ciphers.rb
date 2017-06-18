def caesar_string(string,rotate)
   string=string.chomp.split("").map! {|x|
    caesar_cipher(x,rotate)
  }.join("")
 string
end

def caesar_cipher(letter,rotate)
  #build hashes that map letters to their position in alphabet
  letterCount = 0
  upperkeys = Hash.new
  lowerkeys = Hash.new
  for i in ('A'.ord..'Z'.ord) do
    upperkeys[i.chr] = letterCount
    letterCount+=1
  end
  letterCount = 0
  for i in ('a'.ord..'z'.ord) do
    lowerkeys[i.chr] = letterCount
    letterCount+=1
  end
  #return rotated character if it's alphanumeric
  if letter.match(/[A-Z]/)
    (65+(upperkeys[letter]+rotate)%26).chr
  elsif letter.match(/[a-z]/)
    (97+(lowerkeys[letter]+rotate)%26).chr
  else
    letter
  end
end
puts caesar_string("HELLO",3)

def vigenere_cipher(text,key)
  alphakeys = Hash.new
  letterCount = 0
  
  for i in ('A'.ord..'Z'.ord) do
    alphakeys[i.chr] = letterCount
    letterCount+=1
  end
  
  letters = text.split("")
  letterCount = 0
  
  cipherString = []
  copy = []
  
  if key.length<text.length
    #build up copy to repeat key while its i less than text.length
    for i in (0..text.length-1) do
      if text[i]==" "
        next
      end
      if letterCount==key.length
        letterCount = 0
      end
      copy[i] = key[letterCount]
      letterCount+=1
    end
    for i in (0..copy.length-1) do
      #rotate each letter in text by its position in the alphabet and append to cipherString
      cipherString[i] = caesar_cipher(letters[i],alphakeys[copy[i]])
    end
    
  else
    for i in (0..key.length-1) do
      if text[i]==" "
        next
      end
      if letterCount==text.length
        letterCount = 0
      end
      copy[i] = text[letterCount]
      letterCount+=1
    end
    for i in (0..copy.length-1) do
      cipherString[i] = caesar_cipher(key[i],alphakeys[copy[i]])
    end
  end
  cipherString.join("")
end

puts vigenere_cipher("COUNTON","VIGENERECIPHER")

vigenere_cipher("HELLO","ABC")
