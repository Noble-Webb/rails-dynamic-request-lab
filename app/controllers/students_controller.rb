class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @students = Student.create_with(first_name: nil , last_name: nil )
    @student = Student.find(params[:id])
    render :show 
  end
end