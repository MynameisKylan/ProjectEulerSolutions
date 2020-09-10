# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_multiples(factors, max)
  multiples = []
  (1...max).each do |num| 
    factors.each { |fac| multiples << num if num % fac == 0 && !multiples.include?(num)}
  end
  multiples.sum
end

puts sum_multiples([3,5], 1000)