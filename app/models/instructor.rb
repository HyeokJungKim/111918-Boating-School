class Instructor
  @@all = []
  attr_reader :name #=>
  # def name
  # @name
  # end

  def initialize(name)
    @name = name
    @@all << self
  end

  #class
  def self.all
    @@all
  end
  #List of all the Tests that the instance instructed
  def boating_tests
    BoatingTest.all.select {|test| test.instructor == self}
  end

  def find_test(student_name, test_nameArg)
    boating_tests.find do |test|
      test.student.full_name == student_name && test.test_name == test_nameArg
    end
  end

  def fail_student(student_name, test_nameArg)
    foundTest = find_test(student_name, test_nameArg)
    foundTest.test_status = "Failed"
    foundTest
  end

  def pass_student(student_name, test_nameArg)
    foundTest = find_test(student_name, test_nameArg)
    foundTest.test_status = "Passed"
    foundTest
  end

  #this should return an array of all the students that the instructor administered
  def students
    self.boating_tests.collect do |test|
      test.student
    end.uniq
  end












end
