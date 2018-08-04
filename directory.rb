# Let's put all students into an array
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # Create an empty array
  students = []
  # Get the first name
  name = gets.chomp
  # While the name is not empty, repeat this code
  while !name.empty? do
    # Add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # Get another name from the user
    name = gets.chomp
  end
  # Return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each_with_index do |student, i|
    puts "#{i + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_while(students)
  count = 0
  while count < students.length
    puts "#{count + 1}. #{students[count][:name]} (#{students[count][:cohort]} cohort)"
    count += 1
  end
end

def print_begins_with(students)
  puts "Print student names beginning with which letter?"
  first_character = gets.chomp.downcase
  students.each do |student|
    if student[:name][0].downcase == first_character
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_short_names(students)
  max_length = 12
  puts "Students with names shorter than length #{max_length}:"
  students.each do |student|
    if student[:name].length < max_length
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# Nothing happens until we call the methods
#students = input_students
print_header
#print(students)
#print_begins_with(students)
print_while(students)
#print_short_names(students)
print_footer(students)
