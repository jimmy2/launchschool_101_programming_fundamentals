# question_10.rb

# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?


#p 
bar(foo)

# => "no"

# bar(foo)
# bar("yes")
# "yes" == "no"
# false
# => "no"