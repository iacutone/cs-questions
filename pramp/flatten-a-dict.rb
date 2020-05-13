require 'pry'

dict = {
  "Key1" => "1",
  "Key2" => {
    "a" => "2",
    "b" => "3",
    "c" => {
      "d" => "3",
      "e" => {
        "" => "1"
      }
    }
  }
}

def flatten_dictionary(dict)
  @flattened_hash = {}
  dfs(dict, "")
  @flattened_hash
end

def dfs(hash, pkey)
  hash.each do |key, value|
    if key != ''
      if pkey != ''
        key = pkey + '.' + key
      end
    else
      key = pkey
    end

    if value.is_a? Hash
      dfs(value, key)
    else
      @flattened_hash[key] = value
    end
  end
end

puts flatten_dictionary(dict)
