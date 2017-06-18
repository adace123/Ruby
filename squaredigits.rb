def squareDigits(num)
  num.to_s.split("").map {|x| (x.to_i)**2}.join("")
end

puts(squareDigits(456))
