# Let's put all students into an array
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november, hobbies: "Cooking", height: 180},
  {name: "Darth Vader", cohort: :november, hobbies: "Fencing", height: 196},
  {name: "Nurse Ratched", cohort: :november, hobbies: "First aid", height: 165},
  {name: "Michael Corleone", cohort: :november, hobbies: "Eating", height: 169},
  {name: "Alex DeLarge", cohort: :november, hobbies: "Painting", height: 175},
  {name: "The Wicked Witch of the West", cohort: :november, hobbies: "Flying", height: 155},
  {name: "Terminator", cohort: :november, hobbies: "Robotics", height: 195},
  {name: "Freddy Krueger", cohort: :november, hobbies: "Sleeping", height: 200},
  {name: "The Joker", cohort: :november, hobbies: "Reading", height: 185},
  {name: "Joffrey Baratheon", cohort: :november, hobbies: "Wintering", height: 165},
  {name: "Norman Bates", cohort: :november, hobbies: "Showering", height: 170}
]

# def input_students
#   puts "Please enter the names of the students"
#   puts "To finish, just hit return twice"
#   # Create an empty array
#   students = []
#   # Get the first name
#   name = gets.chomp
#   # While the name is not empty, repeat this code
#   while !name.empty? do
#     # Add the student hash to the array
#     students << {name: name, cohort: :november}
#     puts "Now we have #{students.count} students"
#     # Get another name from the user
#     name = gets.chomp
#   end
#   # Return the array of students
#   students
# end

def input_students
  puts "Please enter the names and cohorts of the students"
  puts "To finish, just type stop"
  # Create an empty array
  students = []
  completed = false
  while !completed
    puts "Enter name: "
    name = gets.chomp
    break if name.downcase == 'stop'
    puts "Enter cohort: "
    cohort = gets.chomp
    break if cohort.downcase == 'stop'
    # Default values
    name.empty? ? name = 'Default Name' : name
    cohort.empty? ? cohort = 'Reserved' : cohort
    # Add the student hash to the array
    students << {name: name, cohort: cohort.to_sym}
    puts "Now we have #{students.count} students"
    # Get another name from the user
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

def group_by_cohort(students)
  grouped = {}
  students.each do |student|
    if grouped[student[:cohort]] == nil
      grouped[student[:cohort]] = []
    end
    grouped[student[:cohort]].push(student)
  end
  grouped.each do |cohort, students|
    puts students
  end
end

def print_while(students)
  count = 0
  while count < students.length
    puts "#{count + 1}. #{students[count][:name]} (#{students[count][:cohort]} cohort)"
    puts "Height: #{students[count][:height]}cm".center(60)
    puts "Hobbies: #{students[count][:hobbies]}".center(60)
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
group_by_cohort(students)
#print_begins_with(students)
#print_while(students)
#print_short_names(students)
print_footer(students)
