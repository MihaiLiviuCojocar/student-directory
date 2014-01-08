
#let's put all the students into an array

students = [ "Berta Gutierrez",
 "Megan Folsom",
 "Rolando Barbella",
 "James Hunter",
 "Abraham Thomas",
 "Roy Gardiner",
 "Jorja Tracy Hung",
 "Colin Frankish",
 "Ayaz Goulamabasse",
 "Kalle Malmiharju",
 "Andrey Krahmal",
 "Biwek Shrestha",
 "Mihai-Liviu Cojocar",
 "Makis Otman",
 "Nabin Rai",
 "Peter Saxon"
]
# and then we print them

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-----------------------------"
end

def print(names)
	names.each do |name|
		puts name
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

# nothing happens until we call the methods

print_header
print(students)
print_footer(students)








