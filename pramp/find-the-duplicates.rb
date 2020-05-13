require 'pry'

# input:  arr1 = [1, 2, 3, 5, 6, 7], arr2 = [3, 6, 7, 8, 20]
# output: [3, 6, 7]

arr1 = [1, 2, 3, 5, 6, 7]
arr2 = [3, 6, 7, 8, 20]

# easiest
def find_duplicates(arr1, arr2)
  arr1 & arr2
end

# brute force
def find_duplicates(arr1, arr2)

  duplicates = []
  i = 0
  j = 0

  arr1.sort!
  arr2.sort!

  while i < arr1.size && j < arr2.size
    if arr1[i] == arr2[j]
      duplicates << arr1[i]
      i += 1
      j += 1
    elsif arr1[i] < arr2[j]
      i += 1
    else
      j += 1
    end
  end

  duplicates
end

# binary search
def find_duplicates(arr1, arr2)
  duplicates = []
  arr1.each do |num|
    # duplicates << num if binary_search(arr2, num) != -1
    duplicates << num if arr2.bsearch { |n| num <=> n } # built Ruby in bsearch
  end

  duplicates
end

def binary_search(arr, num)
  beginning = 0
  ending = arr.size - 1

  while beginning <= ending
    mid = beginning + (ending - beginning)/2

    if arr[mid] < num
      beginning = mid + 1
    elsif arr[mid] == num
      return mid
    else
      ending = mid - 1
    end
  end

  -1
end

puts find_duplicates(arr1, arr2)
