require 'set'

class School
  def initialize
    @school = Hash.new { |h,k| h[k] = Set.new }
  end

  def add(student, grade)
    @school[grade] << student
  end

  def students(grade)
    @school[grade].sort
  end

  def students_by_grade
    @school.sort.map do |grade, students|
      {grade: grade, students: students.sort}
    end
  end

end

module BookKeeping
  VERSION = 3
end
