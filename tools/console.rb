require_relative '../config/environment'

sam = Instructor.new("Sam")
jarrian = Instructor.new("Jarrian")
stephen = Student.new("Stephen", "Argentina")
kiyana = Student.new("Kiyana", "Dunlock")
test1 = BoatingTest.new(stephen, "Test 1", "Passed", jarrian)
test2 = BoatingTest.new(stephen, "Test 2", "Failed", sam)
kiyana.add_boating_test(sam, "Test 3", "Passed")

binding.pry
"0"
