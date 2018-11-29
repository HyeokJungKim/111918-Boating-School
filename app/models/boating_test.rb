class BoatingTest
  @@all = []
  attr_accessor :student, :test_name, :test_status, :instructor

  def initialize(student, test_name, test_status, instructor)
    @test_status = test_status
    @test_name = test_name
    @student = student
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end
end
