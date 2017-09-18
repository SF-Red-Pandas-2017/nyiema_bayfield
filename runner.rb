# EXERCISE 1

def define_name()
  first_name = "Sarah"
  last_name = "Caplan"
end

p define_name() == "Caplan"


# # EXERCISE 2

def calculate_product(numbers)
  product = 1
  numbers.each do |i|
    product = product * i
  end
  product
end

p calculate_product([2,8,3]) == 48
puts calculate_product([1,2,3]) == 6 # this test puts 'true' if calculate_product([1,2,3]) returns the correct value of 6
puts calculate_product([0,-1,-10]) == 0
puts calculate_product([1,-1,-10]) == 10
puts calculate_product([]) == nil


# # EXERCISE 3


#   <Your answer here>





# # EXERCISE 4

# <Your code here>




# # EXERCISE 5

# <Your code here>




