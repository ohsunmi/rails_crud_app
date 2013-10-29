class TeachersController < ApplicationController

	def index
		@teachers = Teacher.all
	end

	def show
		@teacher = Teacher.find(params[:id])
	end

	def new
		@teacher = Teacher.new
	end

	def create
		Teacher.create(params[:teacher])

		redirect_to teachers_path
	end

	def edit
		@teacher = Teacher.find(params[:id])
	end

	def update
		teacher = Teacher.find(params[:id])
		teacher.update_attributes(params[:teacher])

		redirect_to teacher_path(teacher)
	end

	def destroy
		teacher = Teacher.find(params[:id])
		teacher.destroy

		redirect_to teachers_path
	end

end
