class SchoolsController < ApplicationController

	def index
		@schools = School.all
	end

	def show
		@school = School.find(params[:id])
	end

	def new
		@school = School.new
	end

	def create
		School.create(params[:school])

		redirect_to schools_path
	end

	def edit
		@school = School.find(params[:id])
	end

	def update
		school = School.find(params[:id])
		school.update_attributes(params[:school])

		redirect_to school_path(school)
	end

	def destroy
		school = School.find(params[:id])
		school.destroy

		redirect_to schools_path
	end

end
