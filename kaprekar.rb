def kaprekar?(k)
  squared = k**2
  nums = []
  squared.to_s.split("").length.times do 
    nums.push(squared % 10)
    squared/=10
  end
  nums = nums.reverse
  right_sum = nums[(nums.length - k.to_s.split("").length),nums.length].join("").to_i
  left_sum = [nums[0,k.to_s.split("").length].join("").to_i, nums[0,k.to_s.split("").length-1].join("").to_i]
  right_sum + left_sum[0] == k or right_sum + left_sum[1] == k
end

kaprekar?(9)
