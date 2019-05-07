class AddAssessmentsNullConstraint < ActiveRecord::Migration[5.2]
  def change
    change_column_null(:assessments, :test_id, false)
    change_column_null(:assessments, :user_id, false)
  end
end
