class CreateQuestions < ActiveRecord::Migration
  def up
  	create_table :questions do |column|
  		column.string :title
  		column.string :body
  	end
  end

  def down
  	drop_table :questions
  end
end
