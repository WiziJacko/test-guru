class AddTestsNullConstraint < ActiveRecord::Migration[5.2]
  def change
    change_column_null(:tests, :test_name, false)
    change_column_null(:tests, :category_id, false)
  end
end
