# 101-109 - Small Problems > Medium 2 > Now I Know My ABCs

# A collection of spelling blocks has two letters per block, 
# as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words 
# that do not use both letters from any given block. Each block can only be 
# used once.

# Write a method that returns true if the word passed in as an argument 
# can be spelled from this set of blocks, false otherwise.

GROUPS = [
  ["B", "O"], ["X", "K"], ["D", "Q"], ["C", "P"], ["N", "A"],
  ["G", "T"], ["R", "E"], ["F", "S"], ["J", "W"], ["H", "U"],
  ["V", "I"], ["L", "Y"], ["Z", "M"]
]

def block_word?(string)
  used_letters = []
  string.upcase.chars.each do | char |
    GROUPS.each do | group |
      if group[0] == char || group[1] == char
        if used_letters.include?(group)
          return false
        else
          used_letters << group
        end
      end
    end
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('xOslk') == false

# Their solution

# BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

# def block_word?(string)
#   up_string = string.upcase
#   BLOCKS.none? { |block| up_string.count(block) >= 2 }
# end