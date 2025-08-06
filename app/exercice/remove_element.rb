require "byebug"

def remove_element(nums, val)
  nums.reject! { |x| x == val }
  nums.size
end

nums = [ 0, 1, 2, 2, 3, 0, 4, 2 ]
val = 2

puts remove_element(nums, val).inspect
