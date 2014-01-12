def input_students
	print "Please enter the names of the students\n"
	print "To finish, just hit return twice\n"

	# create an empty array
	students = []
	# getthe first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do 
		# add the student hash to the array
		students << {:name => name, :cohort => :january}
		print "Now we have #{students.length} students\n"
		# get another name from the user
		name = gets.chomp
	end
	# return the array of students
	students
end

def print_students(students)
		i = 1
		while i <= students.length
			puts "#{i}. #{students[i-1][:name]} (#{students[i-1][:cohort]} cohort)"
			i = i + 1
   		end
end

def print_header
   print "The students of my cohort at Makers Academy\n"
   print "-----------------------------\n"
 end

def print_footer(names)
   print "Overall, we have #{names.length} great students\n"
end

students = input_students
print_header
print_students(students)
print_footer(students)
