class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def create
    student = Student.create(student_params)
    if student.valid?
      render json: student 
    else
      render json: student.errors, status: 422
    end
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)
    if student.valid?
      render json: student 
    else
      render json: student.errors, status: 422
    end
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy 
    render json:student
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :cohort_id)
  end
end
