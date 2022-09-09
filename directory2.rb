def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # only names that start with the letter K that are fewer than 12 letters long are added to the array    
    if name.start_with? 'K' and name.length < 12
      students << {name: name, cohort: :november}
    end

      puts "Now we have #{students.count} students"
    # get another name from the user
      name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# this method prints the name, cohort and number of each student
def print(students)
    students.each_with_index do |student, number|
      puts "#{number + 1} #{student[:name]} (#{student[:cohort]} cohort)"
    end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students."
end

# nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)