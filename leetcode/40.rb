# medium

require 'pry'

# Input: candidates = [10,1,2,7,6,1,5], target = 8,
# A solution set is:
# [
#   [1, 7],
#   [1, 2, 5],
#   [2, 6],
#   [1, 1, 6]
# ]

candidates = [10,1,2,7,6,1,5]
           # [1,1,2,5,6,7,10]
target = 8

def combination_sum2(candidates, target)
  return [] if candidates.nil? || candidates.size.zero?

  @results = []
  dfs(candidates.sort!, 0, target, [])
  @results
end

def dfs(candidates, start_index, target, current)
  if target == 0
    @results << current.dup
    return
  end

  (start_index...candidates.size).each do |i|
    next if candidates[i] == candidates[i - 1] && i != start_index
    break if candidates[i] > target

    current << candidates[i]
    dfs(candidates, i + 1, target - candidates[i], current)
    current.pop
  end
end

puts combination_sum2(candidates, target)
