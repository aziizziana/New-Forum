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
		@question = Question.find(params[:id])
		render(:edit, {:format => :html})
	end

	def update
		#step 1 find the question we r trying to edit/update
		@question = Question.find(params[:id])
		#step 2 change its attributes to the new user supplied values
		@question.title = params[:title]
		@question.body = params[:body]
		#step 3 save the edited question
		@question.save
		#step 4 display the updated question
	    redirect_to("/questions/#{@question.id}")
	end

end
