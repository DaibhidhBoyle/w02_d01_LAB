class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def student_name()
    return @name
  end

  def student_cohort()
    return @cohort
  end

def set_student_name(new_name)
  @name = new_name
end

def set_student_cohort(new_cohort)
  @cohort = new_cohort
end

def student_talk()
  "I can talk"
end

def student_favourite_language()
  p "Which is your favourite language?"
  language = gets.chomp
  "I love #{language}!"
end

end
