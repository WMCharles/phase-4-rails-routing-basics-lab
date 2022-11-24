class StudentsController < ApplicationController

  def index
    students = Student.all 
    render json: students
  end

  def grades 
    students = Student.all
    students_by_grade = students.sort{|a,b| b[:grade] <=> a[:grade]}
    render json: students_by_grade
  end

end
