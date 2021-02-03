class School
    attr_accessor :grade, :school_name, :roster, :student_name

    def initialize(school_name)
        @school_name = school_name
        @roster = Hash.new{ |h, k| h[k] = [] }
    end


    def add_student(student_name, grade)
        @roster[grade] << student_name
    end

    def grade(level)
        roster.detect do |x, y|
            if x == level
                return y
            end
        end
    end

    def sort 
        roster.each do |x, y|
          roster[x] = y.sort
        end
        
    end



end
