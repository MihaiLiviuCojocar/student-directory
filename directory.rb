def input_students
	print "Please enter the names of the students\n"
	print "To finish, just hit return twice\n"

	# create an empty array
	students = []
	# get the first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do 
		puts "Now enter the student's cohort:"
		cohort_name = gets.chomp
		# add the student hash to the array
		# deafault value added for the cohort's name
		if cohort_name.empty? 
			cohort_name = "January"
		end
		students << {:name => name, :cohort => cohort_name}
		print "Now we have #{students.length} students\n"
		puts "Enter the name of the next student"
		# get another name from the user
		name = gets.chomp
	end
	# return the array of students
	students
end

def print_students(students)
		i = 1
		while i <= students.length
			puts "#{i}. #{students[i-1][:name].center(30, "-")} (#{students[i-1][:cohort]} cohort)"
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
