require "byebug"

# add two numbers represented as arrays
def add_two_numbers(l1, l2)
  l1.size > l2.size
  result = []
  result = l1
  l1 = l2
  l2 =result
  result = []
  aux = Array.new(0)
  l1.each_with_index do |value, index|
    if index > 0
      result << (l1[index] + l2[index] + aux[index - 1])%10
      aux << (l1[index] + l2[index] + aux[index - 1])/10
    else
      result << (l1[index] + l2[index])%10
      aux << (l1[index] + l2[index])/10
    end
  end

  (l1.size...l2.size).each do |index|
    result << (l2[index] + aux[index - 1]) % 10
    aux <<  (l2[index] + aux[index - 1]) /10
  end
  if aux[l1.size] > 0
    result << aux[l1.size]
  end
  result
end


l1 = [ 9, 9, 9, 9, 9, 9, 9 ]
l2 = [ 9, 9, 9, 9 ]
puts add_two_numbers(l1, l2).inspect
