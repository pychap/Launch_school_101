pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[1..2]

<<<<<<< HEAD
puts "I have a pet #{my_pets[1]} and a pet #{my_pets[0]}"
=======
def read_number
  loop do
    puts '>> Please enter a positive or neg number.'
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"
>>>>>>> 3c924978c232ff10631646ca5c219e396081d5b7
