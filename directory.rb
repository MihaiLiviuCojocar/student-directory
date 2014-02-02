YES = "Y"
NO  = "N"
@cohorts = ["January","February","March","April","May","June","July","August","September","Octomber","November","December"]
@students = []

def print_menu
	puts "1. Input the students"
 	puts "2. Show the students"
 	puts "9. Exit"
end

def show_students
	print_choice(@students)
	print_footer(@students)
end

def selection_choice
	selection = gets.chomp
	case selection
 		when "1"
 			# input the students
 			@students = input_students	
 		when "2"
 			# show the students
 			show_students
 		when "9"
 			exit # exit
 		else puts "I don't know what you meant, try again!"
 		end
end

def interactive_menu
	loop do
		# 1. print the menu and ask the user what to do
	 	print_menu
		# 2. read the input and save it into a variable	
		# 3. do what the user has asked
		selection_choice
	end
end


def input_students
	print "Please enter the names of the students\n"
	print "To finish, just hit return twice\n"
	# get the first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do 
		# we give the user the option to choose from
		puts "Now enter the student's cohort: \n (Enter 1 for January, 2 for February, .... , 12 for December)"		
		cohort_num = gets.to_i		
		# if we get a wrong input, repeat the code until succesful
		while !(1..@cohorts.size).include? cohort_num
			puts "Please use a number between 1 and #{@cohorts.size}:"
			cohort_num = gets.to_i
		end
		# after a succesful input, assign the cohort name
		cohort_name = @cohorts[cohort_num - 1]
		puts "You entered -#{name}- and selected the -#{cohort_name}- cohort! Are you sure ? y/n "
		# ask the user if sure about the choice
		answer = [YES, NO]
		user_answer = gets.capitalize.chomp
		while !(answer).include? user_answer
			puts "Please type y/n only!"
			user_answer = gets.chomp.capitalize
		end
		# after confirmation add the student hash to the array
		if user_answer == YES 
			@students << {:name => name, :cohort => cohort_name}
		end
	
		if @students.length == 1
			print "Now we have one student. \n Enter the name of the next student \n"
		else
			print "Now we have #{@students.length} students\n"
			puts "Enter the name of the next student"
		end
		# get another name from the user
		name = gets.chomp
	end
	# return the array of students
	@students
end

def print_students(students)
	students.each.with_index(1) do |student, index|
		puts "#{index}. #{student[:name].center(30, "-")} (#{student[:cohort].center(9)} cohort)"		
	end
end

# method for printing the header
def print_header	
	print "The students of my cohort at Makers Academy\n"
	print "-----------------------------------------------------\n"
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
	print_header unless students.empty?
  sort_field = choice_answer == 'N' ? :name : :cohort
  sorted = students.sort_by{|student| student[sort_field]}
  print_students(sorted)
end

# method for printing the footer
def print_footer(names)
	case names.length
	when 0 then print_header; puts "The list is empty !! \n \n"
	when 1 then puts "Overall, we have just one great student." 
	else print "Overall, we have #{names.length} great students. \n"
  end
end


interactive_menu
