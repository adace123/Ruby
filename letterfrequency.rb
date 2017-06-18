print "Enter data: "
str = gets.chomp
puts
hash = Hash.new
str.split("").sort.each do |x|
  hash[x] = str.count x
end
hash.each do |key,value|
  puts "#{key.upcase} - #{value} - #{"*"*value}"
end
