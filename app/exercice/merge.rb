require "byebug"

def merge(nums1, m, nums2, n)
  i1 = 0
  j = 0
  result =[]
  if nums1.empty?
    return nums2
  end

  if nums2.empty?
    return nums1
  end

  while i1 + j < n + m
    if (nums1[i1] > 0 && nums1[i1] < nums2[j]) && i1 < m
    result << nums1[i1]
    i1 += 1
    else
      result << nums2[j] && j < n
      j += 1
    end
  end
  result
end

nums1 = [ 1, 2, 3, 0, 0, 0 ]
m = 3
nums2 = [ 2, 5, 6 ]
n = 3
puts merge(nums1, m, nums2, n).inspect
# Output: [1, 2, 2, 3, 5, 6]
# Explanation: The merged array is [1,2,2,3,5,6] which is sorted.
