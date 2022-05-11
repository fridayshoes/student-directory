# methsd for student input
def input_students
  puts "Please enter the names of students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is NOT empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array for students
  students
end

# Print the header
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# Print list of students
def print(students)
  students.each_with_index do |student, index|
    # filter names that begin with a, less that 12 characters
    if student[:name].start_with?("a") && student[:name].length < 12
      puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
    end  
  end
end

# Print the footer
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# Nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
