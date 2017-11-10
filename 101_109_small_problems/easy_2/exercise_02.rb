# 101-109 - Small Problems > Easy 2 > How big is the room?

SQUARE_METERS_TO_FEET = 10.7639

def calculate_area_in_meters(length, width)
  (length * width).round(2)
end

def calculate_area_in_feet(area)
  (area * SQUARE_METERS_TO_FEET).round(2)
end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

square_meters = calculate_area_in_meters(length, width)
square_feet = calculate_area_in_feet(square_meters)

puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."