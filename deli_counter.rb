# Write your code here.

require "pry"

katz_deli = []

def line (array)
  if array.length == 0
    puts "The line is currently empty."
  elsif array.length > 0
    array_of_customers = []
    array.map do |customer|
      index = array.index(customer) + 1
      customer_position = "#{index}" + ". " + "#{customer}"
      array_of_customers << customer_position
    end
    string_of_customers = array_of_customers.join(" ")
    puts "The line is currently: " + string_of_customers
  end
end

def take_a_number (array, string)
  array.push(string)
  puts "Welcome, #{string}. You are number #{array.index(string) + 1} in line."
end

def now_serving (array)
  if array.length == 0
    puts "There is nobody waiting to be served!"
  elsif array.length > 0
  puts "Currently serving #{array[0]}."
  array.shift
  end
end

now_serving (['bob', 'him', 'jim'])