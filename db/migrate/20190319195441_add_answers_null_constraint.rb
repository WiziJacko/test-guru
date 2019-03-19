class AddAnswersNullConstraint < ActiveRecord::Migration[5.2]
  def change
    change_column_null(:answers, :answer, false)
    change_column_null(:answers, :question_id, false)
  end
end
