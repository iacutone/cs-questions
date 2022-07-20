# medium

require 'pry'

# Input: s = "lee(t(c)o)de)"
# Output: "lee(t(c)o)de"
# Explanation: "lee(t(co)de)" , "lee(t(c)ode)" would also be accepted.

s = 'lee(t(c)o)de)'

def min_remove_to_make_valid(s)
  stack = []
  open = 0
  close = 0

  s.each_char do |char|
    if char == '('
      open += 1
      stack << char
    elsif char == ')'
      if close < open
        close += 1
        stack << char
      end
    else
      stack << char
    end
  end

  result = ''
  open = 0
  close = 0

  until stack.empty?
    char = stack.pop
    if char == '('
      if open < close
        open += 1
        result.prepend(char)
      end
    elsif char == ')'
      close += 1
      result.prepend(char)
    else
      result.prepend(char)
    end
  end

  result
end

puts min_remove_to_make_valid(s)
