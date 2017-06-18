def average(nums)
  sum=0
  i=0
  while(i<nums.length) do
    sum+=nums[i]
    i+=1
  end
  sum/nums.length.to_f
end

def median(nums)
  nums = nums.sort
  if(nums.size%2!=0)
    nums[nums.size-(nums.size/2)-1].to_f
  else
    (nums[nums.size-(nums.size/2)-1] + nums[nums.size-(nums.size/2)])/2.to_f
  end
end

def standard_deviation(nums)
  avg = average(nums)
  differences = []
  nums.each do |x|
    differences.push((x-avg)**2)
  end
  Math::sqrt(average(differences)).to_f
end

puts "Math Calculator"
numbers = []
while(true) do
  print "[N]umbers [A]verage [M]edian [S]tandard Deviation [C]lear [Q]uit: "
  choice = gets.chomp
  case choice 
  when "N"
    i=0
    userNumbers = gets.chomp.split(" ").map{|x| x.to_i}
    while(i<userNumbers.length) do
      numbers.push userNumbers[i]
      i+=1
    end
  when "A"
    puts "Average = #{average(numbers)}"
  when "M"
    puts "Median = #{median(numbers)}"
  when "S"
    puts "Standard Deviation = #{standard_deviation(numbers)}"
  when "C"
    numbers.clear
  when "Q"
    break
  else
    puts "Not a valid option."
  end
end
