# 101-109 - Small Problems > Advanced 1 > Madlibs Revisited

# Let's build another program using madlibs. We made a program like this in the
# easy exercises. This time, the requirements are a bit different.

# Make a madlibs program that reads in some text from a text file that you have
# created, and then plugs in a selection of randomized nouns, verbs, adjectives,
# and adverbs into that text and prints it. You can build your lists of nouns, 
# verbs, adjectives, and adverbs directly into your program, but the text data
# should come from a file or other external source. Your program should read 
# this text, and for each line, it should place random words of the appropriate
# types into the text, and print the result.

# The challenge of this program isn't about writing your program; it's about
# choosing how to represent your data. Choose the right way to structure your
# data, and this problem becomes a whole lot easier. This is why we don't show
# you what the input data looks like; the input representation is your
# responsibility.

# Example output:

# The sleepy brown cat noisily
# licks the sleepy yellow
# dog, who lazily licks his
# tail and looks around.

NOUNS = %w(cat dog frog elephant kangaroo)
VERBS = %w(eats hits loves fights kisses watches)
ADJ = %w(hot cold dark light big small wild calm)
ADV = %w(quickly messily gradually mightily noisily)

def madlibs(file_name)
  text = File.read(file_name).split(/[ ]|\,|\.|\?|\n/)
  for i in 0...text.length
    case text[i]
    when "[noun]" then text[i] = NOUNS.sample
    when "[verb]" then text[i] = VERBS.sample
    when "[adj]" then text[i] = ADJ.sample
    when "[adv]" then text[i] = ADV.sample
    end
  end
  text.join(" ")
end

p madlibs("input.txt")

# Their solution

# ADJECTIVES = %w(quick lazy sleepy ugly).freeze
# NOUNS      = %w(fox dog head leg cat tail).freeze
# VERBS      = %w(spins bites licks hurdles).freeze
# ADVERBS    = %w(easily lazily noisly excitedly).freeze

# File.open('madlibs.txt') do |file|
#   file.each do |line|
#     puts format(line, noun:      NOUNS.sample,
#                       verb:      VERBS.sample,
#                       adjective: ADJECTIVES.sample,
#                       adverb:    ADVERBS.sample)
#   end
# end

