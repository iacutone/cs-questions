def is_valid(s)
  return false unless s
  return false if s.size == 1

  hash = {
    '{' => '}',
    '(' => ')',
    '[' => ']',
  }

  queue = []

  s.each_char do |char|
    if hash[char]
      queue << hash[char]
    else
      last_item = queue.pop
      return false unless last_item == char
    end
  end

  queue.empty?
end
