class QuestionsController < ApplicationController
	def index
		@questions = Question.all
	end

	def show
		@questions = Question.find(params[:id])
	end

	def new
		@question = Question.new
	end

	def create
		Question.create(params[:question])
		redirect_to questions_path
	end

	def edit
		@questions = Question.find(params[:id])
	end

	def update
		@questions = Question.find(params[:id])
		@questions.update_attributes(params[:questions])
		render :text => "Updated successfully!!"
		
	end

end
