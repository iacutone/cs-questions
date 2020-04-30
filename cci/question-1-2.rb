# Check Permutation: Given two strings,write a method to decide if one is a permutation of the other.

require 'pry'

perm1 = "dog"
perm2 = "god"

notperm1 = "top"
notperm2 = "tom"

def check_permutation(s1, s2)
  return true if s1.lower.chars - s2.lower.chars == []

  false
end
