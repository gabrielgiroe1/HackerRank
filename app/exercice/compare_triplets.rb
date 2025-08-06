require "byebug"
def compareTriplets(a, b)
  sum_a = 0
  sum_b = 0
  if a.size <= b.size
    a.each_with_index do |value, i|
      sum_a += 1 if a[i] > b[i]
      sum_b += 1 if a[i] < b[i]
    end
    sum_a += b.length - a.length
  else
    b.each_with_index do |value, i|
      sum_a += 1 if a[i] > b[i]
      sum_b += 1 if a[i] < b[i]
    end
    sum_b += a.length - b.length
  end
  [ sum_a, sum_b ]
end
puts compareTriplets([ 1, 2, 3 ], [ 3, 2, 1 ]).inspect
