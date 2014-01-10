
#let's put all the students into an array

students = [ 
	{:name => "Berta Gutierrez", :cohort => :january},
 	{:name => "Megan Folsom", :cohort => :january},
 	{:name => "Rolando Barbella", :cohort => :january},
 	{:name => "James Hunter", :cohort => :january},
 	{:name => "Abraham Thomas", :cohort => :january},
 	{:name => "Roy Gardiner", :cohort => :january},
 	{:name => "Jorja Tracy Hung", :cohort => :january},
 	{:name => "Colin Frankish", :name => :january},
 	{:name => "Ayaz Goulamabasse", :cohort => :january},
 	{:name => "Kalle Malmiharju", :cohort => :january},
 	{:name => "Andrey Krahmal", :cohort => :january},
 	{:name => "Biwek Shrestha", :cohort => :january},
 	{:name => "Mihai-Liviu Cojocar", :cohort => :january},
 	{:name => "Makis Otman", :cohort => :january},
 	{:name => "Nabin Rai", :cohort => :january},
 	{:name => "Peter Saxon", :cohort => :january}
]
# and then we print them

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-----------------------------"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort})"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

# nothing happens until we call the methods

print_header
print(students)
print_footer(students)








