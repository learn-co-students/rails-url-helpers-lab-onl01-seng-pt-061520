class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find_by(id: params[:id])
    if @student.active == true 
      @student.active = false
      @student.save
    else 
      @student.active = true
      @student.save
     #student.update(active: true) other way to do it
    end
    redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

end