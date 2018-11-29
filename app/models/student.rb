class Student
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def self.full_names
    @@all.collect {|student| student.full_name}
  end

  def self.find_student(full_name)
    @@all.find do |studentObj|
      studentObj.full_name.downcase == full_name.downcase
    end
  end

  def add_boating_test(instructor, test_name, test_status)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  #We want all the tests that the student has taken
  def tests
    BoatingTest.all.select do |test|
      test.student == self
    end
  end

  def instructors
    self.tests.map do |test|
      test.instructor
    end.uniq
  end







end
