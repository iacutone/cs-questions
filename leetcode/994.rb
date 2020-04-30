# medium

require 'pry'

grid = [[2,1,1],[1,1,0],[0,1,1]]

def oranges_rotting(grid)
  return -1 if grid.nil? || grid.size.zero?

  minutes = 0
  fresh_orange_count = 0
  queue = {}

  grid.each_with_index do |row, row_index|
    row.each_with_index do |cell, cell_index|
      if cell == 1
        fresh_orange_count += 1
      elsif cell == 2
        dfs(grid, row_index, cell_index)
        # queue[row_index, cell_index]
      end
    end
  end

  minutes
end

def dfs(grid, row_index, cell_index)
  return 0 if row_index < 0 || cell_index < 0 || row_index > grid.size || cell_index > grid[row_index].size || grid[row_index][cell_index] != 1

  grid[row_index][cell_index] = 2
  dfs(grid, row_index + 1, cell_index)
  dfs(grid, row_index - 1, cell_index)
  dfs(grid, row_index, cell_index + 1)
  dfs(grid, row_index, cell_index - 1)

  1
end

puts oranges_rotting(grid)

def oranges_rotting(grid)
  @m, @n = grid.length , grid[0].length
  @grid = grid
  mins = fresh_count = 0
  queue = []
  (0...@m).each { |i|
    (0...@n).each { |j|
      if rotten?(i, j)
        queue << [i, j]
      elsif fresh?(i, j)
        fresh_count += 1
      end
    }
  }
  #BFS
  while(queue.any? && fresh_count > 0)
    mins += 1
    size = queue.size
    size.times {
      cell = queue.shift
      adj_cells(cell[0], cell[1]).each { |adj|
        if fresh?(adj[0], adj[1])
          make_rotten(adj[0], adj[1])
          queue << [adj[0], adj[1]]
          fresh_count -= 1
        end
      }
    }
  end
  fresh_count == 0 ? mins : -1
end

#Helper methods
def adj_cells(i, j)
  cells = []
  cells << [i+1, j] if i+1 < @m
  cells << [i, j+1] if j+1 < @n
  cells << [i-1, j] if i-1 >= 0
  cells << [i, j-1] if j-1 >= 0
  cells
end

def make_rotten(i, j)
  @grid[i][j] = 2
end

def rotten?(i, j)
  @grid[i][j] == 2
end

def fresh?(i, j)
  @grid[i][j] == 1
end
# 1-5 7-10
