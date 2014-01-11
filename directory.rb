def input_students
	print "Please enter the names of the students\n"
	puts "To finish, just hit return twice\n"

	# create an empty array
	students = []
	# getthe first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do 
		# add the student hash to the array
		students << {:name => name, :cohort => :january}
		puts "Now we have #{students.length} students\n"
		# get another name from the user
		name = gets.chomp
	end
	# return the array of students
	students
end

def printeaza(students)
   students.each do |student|
     puts "#{student[:name]} (#{student[:cohort]} cohort})\n"
   end
end

def print_header
   puts "The students of my cohort at Makers Academy\n"
   puts "-----------------------------"
 end

def print_footer(names)
   puts "Overall, we have #{names.length} great students\n"
end

students = input_students
print_header
printeaza(students)
print_footer(students)
