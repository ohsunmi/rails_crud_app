class StudentsController < ApplicationController

	def index
		@students = Student.all
	end

	def show
		@student = Student.find(params[:id])
	end

	def new
		@student = Student.new
	end

	def create
		Student.create(params[:Student])

		redirect_to students_path
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		student = Student.find(params[:id])
		student.update_attributes(params[:student])

		redirect_to student_path(student)
	end

	def destroy
		student = Student.find(params[:id])
		student.destroy

		redirect_to students_path
	end

end
