class Bootcamp
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |h,k| h[k] = []}
    end

    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def hire(new_teach)
        @teachers << new_teach
    end

    def enroll(student)
        if students.length < @student_capacity
            @students << student
            return true
        else
            return false
        end
    end

    def enrolled?(student)
        @students.include?(student)
    end

    def student_to_teacher_ratio
        @students.length/@teachers.length
    end

    def add_grade(student, grade)
        @students.each do |existing_student|
            if @students.include?(student)
                @grades[student] << grade
                return true
            end
        end
        return false
    end

    def num_grades(student)
        @grades[student].length
    end

    def average_grade(student)

        if @grades[student] == []
            return nil
        else
            avg = @grades[student].sum/@grades[student].length
        end

        avg
    end

end
