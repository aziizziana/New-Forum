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
		@questions = Question.new(:title => params[:title], :body => params[:body])
		@questions.save()
		redirect_to questions_path
	end

end
