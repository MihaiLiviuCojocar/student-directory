
#let's put all the students into an array

students = [ 
	["Berta Gutierrez", :january],
 	["Megan Folsom", :january],
 	["Rolando Barbella", :january],
 	["James Hunter", :january],
 	["Abraham Thomas", :january],
 	["Roy Gardiner", :january],
 	["Jorja Tracy Hung", :january],
 	["Colin Frankish", :january],
 	["Ayaz Goulamabasse", :january],
 	["Kalle Malmiharju", :january],
 	["Andrey Krahmal", :january],
 	["Biwek Shrestha", :january],
 	["Mihai-Liviu Cojocar", :january],
 	["Makis Otman", :january],
 	["Nabin Rai", :january],
 	["Peter Saxon", :january]
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








