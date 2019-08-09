class School
  def initialize(name)
    @school = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade|
      @roster[grade].sort!
    end
    @roster[grade]
  end
  
end
