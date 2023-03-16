class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students_sorted_by_grade = Student.order(grade: :desc)
        render json: students_sorted_by_grade
    end

    # def highest_grade
    #     # Sort the students by grade in descending order
    # sorted_students = students.sort_by {|student| -student["grade"]}

    # # Get the student with the highest grade (the first one in the sorted list)
    # highest_grade_student = sorted_students[0]

    # # Render the student as a JSON object
    # render json: highest_grade_student
    # end
end
