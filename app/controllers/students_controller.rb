class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def activate
    student = Student.find(params[:id])
    if student.active == true
      student.update(active: false)
    else
      student.update(active: true)
    end

    redirect_to student
  end

  def show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end