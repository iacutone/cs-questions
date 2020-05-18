# medium

require 'pry'

# Input: "/home/"
# Output: "/home"
# Explanation: Note that there is no trailing slash after the last directory name.

path = '/home/'

def simplify_path(path)
  new_path = []

  path.split('/').each do |part|
    next if part == '' || part == '.'
    if part == '..'
      new_path.pop
    else
      new_path << part
    end
  end

  '/'.concat new_path.join('/')
end

puts simplify_path(path)
