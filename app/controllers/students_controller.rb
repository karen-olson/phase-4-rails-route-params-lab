class StudentsController < ApplicationController

  def index
    students = params[:name] ? Student.search(params[:name]) : Student.all
    render json: students
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end
end
