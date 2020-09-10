# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_multiples(factors, max)
  result = 0
  factors.each do |num|
    x = num
    while x < max
      result += x
      x += num
    end
  end
  result
end