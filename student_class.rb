class Student
  attr_accessor :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def talking(words)
    return words
  end

  def favourite_language(language)
    return "#{@name}'s favourite language is #{language}"
  end
end
