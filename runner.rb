require_relative 'config/environment'

# Do not log database activity when running our application
ActiveRecord::Base.logger = nil
f
# Enter your code below ...
#Exercise1
first_name = "Cameron"
last_name = "Breeden"

#Exercise2 needs to incorporate an each method to do this
def calculate_product (input)
   sum = 1
    input.each do |x|
      sum = sum * x
  end
  return sum
end
p calculate_product([1,2,3]) == 6
p calculate_product([0,-1,-10]) == 0
p calculate_product([]) == nil

#Exercise3
#The format_name method takes an initiated hash with keys "last" and "first"
#and formats it so a comma is in between the last and first name

#The display_name method displays output of the format_name method which would
#be last name (or the key "last" for hash name) comma first name
#(or the key "first" for hash name)

#Exercise4
string_missing_7    = (1..10000).reject { |x| x == 7 }.join(",")
def find_missing_number(string_missing_7 )
array = string_missing_7.split(',')
i=0
number = 1
  while i < array.length
    if number != array[i].to_i
      return number
      break
    end
    i+=1
    number+=1
  end
end
puts find_missing_number(string_missing_7) == 7

string_missing_4567 = (1..10000).reject { |x| x == 4567 }.join(",")
def find_missing_number(string_missing_4567 )
array = string_missing_4567.split(',')
i=0
number = 1
  while i < array.length
    if number != array[i].to_i
      return number
      break
    end
    i+=1
    number+=1
  end
end
puts find_missing_number(string_missing_4567) == 4567

string_missing_9999 = (1..10000).reject { |x| x == 9999 }.join(",")
def find_missing_number(string_missing_9999 )
array = string_missing_9999.split(',')
i=0
number = 1
  while i < array.length
    if number != array[i].to_i
      return number
      break
    end
    i+=1
    number+=1
  end
end
puts find_missing_number(string_missing_9999) == 9999

class House

attr_accessor :current_temp, :minimum_temp, :maximum_temp, :heater_on

  def initialize(current_temp,minimum_temp,maximum_temp)
    @current_temp = current_temp
    @minimum_temp = minimum_temp
    @maximum_temp = maximum_temp
    @heater_on = false
    @ac_on = false
    end

    def toggle_heater


      if @heater_on == false
        @heater_on = true
        @ac_on = false
        puts "Heater is on"
      else
        @heater_on = true

      end
    end



    end

    def toggle_ac
      if @ac_on == false
        @ac_on = true
        @heater_on = false
        p "AC is on"
      else
        @ac_on = true
      end
    end



old_home = House.new(50,65,75)
p old_home.heater_on

p old_home.toggle_heater





