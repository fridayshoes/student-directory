# List of students in an array
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]

# Print the header
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# Print list of students
def print(names)
  names.each do |name|
    puts name
  end
end

# Print the footer
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# Nothing happens until we call the methods
print_header
print(students)
print_footer(students)
