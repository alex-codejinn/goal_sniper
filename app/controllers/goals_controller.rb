class GoalsController < ApplicationController
	def destroy
		@goal = Goal.find(params[:id])
		if @goal.destroy
			redirect_to "/goals"
		end
	end

	def update
		@goal = Goal.find(params[:id])
		if @goal.update_attributes(goal_params)
			redirect_to "/goals"
		else
			render "edit"
		end
	end

	def edit
		@goal = Goal.find(params[:id])
	end

	def index
		@goals = Goal.all
	end

	def new
	end

	def create
		@goal = Goal.new(goal_params)
		if @goal.save
			redirect_to "/goals"
		else
			render "new"
		end
	end

	private
		def goal_params
			params.require(:goal).permit(:image, :description, :title, :days_to_complete)
		end
end
