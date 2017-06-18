combination = -> (n) do
    -> (k) do
        (n-k+1..n).reduce{|x,y|x*y}/(1..k).reduce{|x,y| x*y}
    end
end

n=52
i=5
ncr = combination.(n)
puts ncr.(i)
