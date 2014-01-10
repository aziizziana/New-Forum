class QuestionsController < ApplicationController
	def index
		#retrieving a list of all the questions
		@questions = Question.all

		#display the index page
		render(:index)
	end

	def show
		#find the question
		@questions = Question.find(params[:id])
		
		#display the question
		render(:show)
	end

	def new
		#display a form for creating a new question
		@question = Question.new
		render(:new)
	end

	def create
		#insert the question into the database
		Question.create(params[:question])

		#display the newly created question
		redirect_to questions_path
	end

	def edit
		#retrieve the question you want to edit
		@question = Question.find(params[:id])

		#display the question in the edit form
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
