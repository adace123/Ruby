def number_shuffle(number)
  # your code here
  f = (1..number.to_s.length).reduce(:*)
  combos = []
  while combos.length < f do 
    combos.push(number.to_s.split("").shuffle.join(""))
    combos = combos.uniq
  end
  combos.map{|x| x.to_i}.sort
end

def word_shuffle(word)
  f = (1..word.length).reduce(:*)
  combos = []
  while combos.length < f do
    combos.push(word.split("").shuffle.join(""))
    combos = combos.uniq
  end
  combos
end

number_shuffle(12345)
word_shuffle("hello")
