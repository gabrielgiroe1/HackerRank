require "byebug"

def add_binary(a, b)
  aux_1 = a.to_i(2).to_s(10)
  aux_2 = b.to_i(2).to_s(10)
  (aux_1.to_i + aux_2.to_i).to_s(2)
end

a = "1010"
b = "1101"
puts add_binary(a, b).inspect
# Output: "10111"
# Explanation: 10 + 13 = 23, which is "10111" in
