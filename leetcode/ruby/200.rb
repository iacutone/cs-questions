# medium

require 'pry'

grid = [["1","1","1","1","0"],["1","1","0","1","0"],["1","1","0","0","0"],["0","0","0","0","0"]]

def num_islands(grid)
  return 0 if grid.nil? || grid.size.zero?

  number_of_islands = 0

  grid.each_with_index do |row, row_index|
    row.each_with_index do |char, char_index|
      if char == "1"
        number_of_islands += dfs(grid, row_index, char_index)
      end
    end
  end

  number_of_islands
end

def dfs(grid, row_index, char_index)
  return 0 if row_index < 0 || char_index < 0 || row_index + 1 > grid.size || char_index + 1 > grid[row_index].size || grid[row_index][char_index] == "0"

  grid[row_index][char_index] = "0"
  dfs(grid, row_index + 1, char_index)
  dfs(grid, row_index - 1, char_index)
  dfs(grid, row_index, char_index + 1)
  dfs(grid, row_index, char_index - 1)

  1
end

puts num_islands(grid)
