# 101-109 - Small Problems > Easy 5 > After Midnight (Part 2)

# As seen in the previous exercise, the time of day can be represented as the number of minutes
# before or after midnight. If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number
# of minutes before and after midnight, respectively. 
# Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

MAX_TIME = 1440

def before_midnight(time_string)
  hours = time_string.split(':')[0].to_i
  minutes = time_string.split(':')[1].to_i
  total = ((hours * 60) + minutes)
  if total.between?(1, MAX_TIME)
    total = MAX_TIME - total
  else
    0
  end
end

def after_midnight(time_string)
  hours = time_string.split(':')[0].to_i
  hours = 0 if hours == 24
  minutes = time_string.split(':')[1].to_i
  total = (hours * 60) + minutes
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
p after_midnight('03:16') == 196
p before_midnight('03:16') == 1244

p after_midnight('00:00') # == 0
p before_midnight('00:00') # == 0
p after_midnight('12:34') # == 754
p before_midnight('12:34') # == 686
p after_midnight('24:00') # == 0
p before_midnight('24:00') # == 0

# Their solution

# HOURS_PER_DAY = 24
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def after_midnight(time_str)
#   hours, minutes = time_str.split(':').map(&:to_i)
#   (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
# end

# def before_midnight(time_str)
#   delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
#   delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
#   delta_minutes
# end