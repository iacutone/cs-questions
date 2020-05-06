# medium

require 'pry'

# Input: s1 = "ab" s2 = "eidbaooo"
# Output: True
# Explanation: s2 contains one permutation of s1 ("ba").

# s1 = 'ab'
# s2 = 'eidbaooo'
# s1 = 'ab'
# s2 = 'eidboaoo'
s1 = "abc"
s2 = "ccccbbbbaaaa"

# hash solution
def check_inclusion(s1, s2)
  s1_hash = {}
  s1.each_char do |char|
    if s1_hash[char]
      s1_hash[char] += 1
    else
      s1_hash[char] = 1
    end
  end

  s2_hash = {}
  s2[0..s1.size - 1].each_char do |char|
    if s2_hash[char]
      s2_hash[char] += 1
    else
      s2_hash[char] = 1
    end
  end

  i = 0
  j = s1.size

  until j == s2.size
    return true if s1_hash == s2_hash

    if s2_hash[s2[i]]
      s2_hash[s2[i]] -= 1
    else
      s2_hash[s2[i]] = 1
    end
    if s2_hash[s2[i]] < 1
      s2_hash.delete(s2[i])
    end
    if s2_hash[s2[j]]
      s2_hash[s2[j]] += 1
    else
      s2_hash[s2[j]] = 1
    end

    i += 1
    j += 1
  end

  s1_hash == s2_hash
end

# array solution
def check_inclusion(s1, s2)
  s1_arr = []
  s1.each_char do |char|
    s1_arr << (char.ord) - 'a'.ord
  end

  s2_arr = []
  s2.each_char do |char|
    s2_arr << (char.ord) - 'a'.ord
  end

  freq_in_s1 = [0] * 26
  s1_arr.each do |ord|
    freq_in_s1[ord] += 1
  end

  window = [0] * 26
  s2_arr.each_with_index do |char, i|
    window[char] += 1
    if i >= s1.size
      window[s2_arr[i - s1.size]] -= 1
    end
    if window == freq_in_s1
      return true
    end
  end

  false
end

puts check_inclusion(s1, s2)
