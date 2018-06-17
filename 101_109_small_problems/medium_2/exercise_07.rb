# 101-109 - Small Problems > Medium 2 > Unlucky Days

# Write a method that returns the number of Friday the 13ths in the year
# given by an argument. You may assume that the year is greater than 1752
# (when the United Kingdom adopted the modern Gregorian Calendar) and that
# it will remain in use for the foreseeable future.

require 'Date'

def friday_13th(year)
  count = 0
  for i in 1..12
    if Date.new(year, i, 13).friday?
      count += 1
    end
  end
  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

# Further exploration

# An interesting variation on this problem is to count the number months 
# that have five Fridays. This one is harder than it sounds since you 
# must account for leap years.

def five_fridays_month(year)
  count = 0
  array = []
  date = Date.new(year, 1, 1)
  last_day = Date.new(year, 12, 31)
  while date < last_day
    if date.friday?
      array << date.month
    end
    date = date.next
  end
  for i in 1..12
    count += 1 if array.count(i) >= 5
  end
  count
end

p five_fridays_month(2018) == 4
p five_fridays_month(2016) == 5

# Their solution

# require 'date'

# def friday_13th(year)
#   unlucky_count = 0
#   thirteenth = Date.new(year, 1, 13)
#   12.times do
#     unlucky_count += 1 if thirteenth.friday?
#     thirteenth = thirteenth.next_month
#   end
#   unlucky_count
# end