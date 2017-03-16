class RoundsController < ApplicationController
	def index
	end

	def show
	end


	def new
		@round = Round.new(params[:round])
		p params

		if @round.save
		  # success
		  @course = Course.find(3)
		else
		  # error handling
		  
		  @course = Course.find(1)
		end
	end


	def create
		@round = Round.create(course_name: params[:course_name], hole_count: params[:hole_count], player_id: params[:player_id])
		 redirect_to courses_path
	end

	def edit
	end
end
