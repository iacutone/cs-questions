# medium

require 'pry'

# Input: [[1,2],[2,3],[3,4],[1,3]]
# Output: 1
# Explanation: [1,3] can be removed and the rest of intervals are non-overlapping.

intervals = [[1,2],[2,3],[3,4],[1,3]]
intervals = []

def erase_overlap_intervals(intervals)
  return 0 unless intervals
  return 0 if intervals.empty?

  intervals = intervals.sort_by do |arr|
    arr[1]
  end

  remove_intervals = 0
  first_to_end = intervals[0][0]

  intervals.each do |interval|
    start = interval[0]

    if start < first_to_end
      remove_intervals += 1
    else
     first_to_end = interval[1]
    end
  end

  remove_intervals
end

puts erase_overlap_intervals(intervals)
