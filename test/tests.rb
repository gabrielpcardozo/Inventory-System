#Create Person
test_employee = Employee.new(first_name: "Pablo", last_name: "Silva", age: 20, email: "pablinhorj@gmail.com")
test_employee.save  
puts test_employee