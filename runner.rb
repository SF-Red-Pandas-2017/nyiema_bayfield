# EXERCISE 1
first_name = "Iris"
last_name = "Nevins"

# EXERCISE 2
def calculate_product(array)
  product = 1
  array.each do |i|
    product *= i
  end
  product
end


# EXERCISE 3

def format_name(name)
  return "#{name[:last]}, #{name[:first]}"
end

def display_name(name)
  puts format_name(name)
end

# format_name returns an the keys of a hash but does not print the value to the console
# display_name prints the value of format_name to the console


# # EXERCISE 4
string_missing_7 = (1..10000).reject { |x| x == 7 }.join(",")
string_missing_4567 = (1..10000).reject { |x| x == 4567 }.join(",")
string_missing_9999 = (1..10000).reject { |x| x == 9999 }.join(",")

def find_missing_number(arg)
  arg = arg.split(",")
  new_arg = arg.map do |i|
              i.to_i
            end
  i = 0
  while i < new_arg.length-1
    if new_arg[i] + 1 != new_arg[i + 1]
      missing_number = new_arg[i] + 1
    end
    i+=1
  end
  missing_number
end


# EXERCISE 5


# driver/test code
# puts calculate_product([1,2,3]) == 6 # this test puts 'true' if calculate_product([1,2,3]) returns the correct value of 6
# puts calculate_product([0,-1,-10]) == 0
# puts calculate_product([1,-1,-10]) == 10
# puts calculate_product([]) == 1
# puts calculate_product([1, -4]) == -4
# puts format_name({:first => "Iris", :last => "Nevins"}) == "Nevins, Iris"
# puts display_name({:first => "Iris", :last => "Nevins"}) == nil
# puts find_missing_number("1, 2, 3, 5")
puts find_missing_number(string_missing_7) == 7
puts find_missing_number(string_missing_4567) == 4567
puts find_missing_number(string_missing_9999) == 9999
