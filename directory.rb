# Method for student input
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

  
# Print list of student - Using while
#def print(students)
#  index = 0
#  while index < students.length do
#    puts "#{index + 1}. #{students[index][:name]} #{students[index][:cohort]} cohort"
#  index +=1
#  end
#end

# Print list of student - Using while and filter
def print(students)
  index = 0
  while index < students.length do
    # filter names that begin with a, less that 12 characters
    if students[index][:name].start_with?("a") && students[index][:name].length < 12
      puts "#{index + 1}. #{students[index][:name]} #{students[index][:cohort]} cohort"
    end
    index +=1
  end
end

    
    
# Print the footer
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# Nothing happens until we call the methods
students = input_students
print_header
# first_letter(students)
# name_length(students)
print(students)
print_footer(students)




# OLD CODE

# Print list of students - Using .each
#def print(students)
#  students.each_with_index do |student, index|
#    puts "#{index + 1}. #{student[:name]} #{student[:cohort]} cohort"
#  end  
# end

# Print list of students - Using .each and filter
#def print(students)
# students.each_with_index do |student, index|
    # filter names that begin with a, less that 12 characters
#    if student[:name].start_with?("a") && student[:name].length < 12
#      puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
#    end  
#  end
#end  



# Filter names by first letter
#def first_letter(students)
#  students.each do | student |
#    if student[:name].start_with?("a")
#      puts "F1 #{student[:name]}"
#    end
#  end
#end

# Filter for names less than 12 characters in length
#def name_length(students)
#  students.each do | student |
#    if student[:name].length < 12
#      puts "F2 #{student[:name]}"
#    end
#  end
#end)
