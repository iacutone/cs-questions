# medium

require 'pry'

# s: 'cbaebabacd' p: 'abc'

# Output:
# [0, 6]

s = 'cbaebabacd'
p = 'abc'

# s = 'abab'
# p = 'ab'

s = 'baa'
p = 'aa'

def find_anagrams(s, p)
  return [] unless s || s.size.zero?
  return [] if s.size < p.size

  p_counter = {}
  s_counter = {}
  results = []
  right = 0

  p.each_char do |char|
    if p_counter[char]
      p_counter[char] += 1
    else
      p_counter[char] = 1
    end
  end

  while right < s.size
    left = right - p.size + 1

    if s_counter[s[right]].nil?
      s_counter[s[right]] = 1
    else
      s_counter[s[right]] += 1
    end

    if p_counter == s_counter
      results << left
    end


    if right + 1 >= p.size
      if s_counter[s[left]] > 1
        s_counter[s[left]] -= 1
      else
        s_counter.delete(s[left])
      end
    end

    right += 1
  end

  results
end

puts find_anagrams(s, p)
