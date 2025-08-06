require "byebug"
def plusMinus(arr)
  # Write your code here
  sum_plus = 0
  sum_minus = 0
  sum_zero = 0
  arr.each do |value|
    byebug
    sum_zero += 1 if value == 0
    sum_plus += 1 if value > 0
    sum_minus += 1 if value < 0
  end
  puts (sum_plus.to_f / arr.size).truncate(6)
  puts (sum_minus.to_f / arr.size).truncate(6)
  puts (sum_zero.to_f / arr.size).truncate(6)
end

puts plusMinus([ 1, 1, 0, -1, -1 ]).inspect
