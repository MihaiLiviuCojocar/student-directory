def input_students
	print "Please enter the names of the students\n"
	print "To finish, just hit return twice\n"

	# create an empty array
	students = []
	# get the first name
	name = gets.delete("\n")
	# while the name is not empty, repeat this code
	while !name.empty? do 
		# we give the user the option to choose from
		puts "Now enter the student's cohort: \n (Enter 1 for January, 2 for February, .... , 12 for December)"
		cohorts = ["January","February","March","April","May","June","July","August","September","Octomber","November","December"]
		cohort_num = gets.to_i
		
		# if we get a wrong input, repeat the code until succesful
		while !(1..cohorts.size).include? cohort_num
			puts "Please use a number between 1 and #{cohorts.size}:"
			cohort_num = gets.to_i
		end

		# after a succesful input, assign the cohort name
		cohort_name = cohorts[cohort_num - 1]
		puts "You entered -#{name}- and selected the -#{cohort_name}- cohort! Are you sure ? y/n "
		# ask the user if sure about the choice
		answer = ["Y","N"]
		user_answer = gets.capitalize.chomp
		while !(answer).include? user_answer
			puts "Please type y/n only!"
			user_answer = gets.chomp.capitalize
		end

		if user_answer == answer[0]
			# after confirmation add the student hash to the array
			students << {:name => name, :cohort => cohort_name}
		else 
			puts "Chose again !"
		end

		if students.length == 1
			print "Now we have one student. \n Enter the name of the next student \n"
		else
			print "Now we have #{students.length} students\n"
			puts "Enter the name of the next student"
		end
		# get another name from the user
		name = gets.chomp
	end
	# return the array of students
	students
end

def print_students(students)
			i = 1
			while i <= students.length
				puts "#{i}. #{students[i-1][:name].center(30, "-")} (#{students[i-1][:cohort].center(9)} cohort)"
				i = i + 1
   			end
end

# method for printing the header
def print_header(students)
	if students.length != 0
    	print "The students of my cohort at Makers Academy\n"
    	print "-----------------------------\n"
    end
 end

# added choice for how the list is sorted and printed
def print_choice(students)
	puts "How do you want to print the student's list ? By name or by cohort ? n/c"
	answer_choices = ["N","C"]
	choice_answer = gets.capitalize.chomp

	while !(answer_choices).include? choice_answer
		puts "Please type 'n' or 'c' !"
		choice_answer = gets.capitalize.chomp
	end
		puts print_header(students)
		
	if choice_answer == answer_choices[0]
		sort_by_name = students.sort_by{ |name| name[:name]}
		print_students(sort_by_name)
	else
		sort_by_cohort = students.sort_by{ |cohort| cohort[:cohort]}
		print_students(sort_by_cohort)
	end
end

# method for printing the footer
def print_footer(names)
	if names.length == 0
		puts "You didn't enter any name !! "
		else
			if names.length == 1
				puts "Overall, we have just one great student."
				else
    				print "Overall, we have #{names.length} great students. \n"
    			end
    end
end

students = input_students
print_choice(students)
print_footer(students)
