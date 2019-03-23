class AddTestsNullConstraint < ActiveRecord::Migration[5.2]
  def change
    change_column_null(:tests, :name, false)
    change_column_null(:tests, :category_id, false)
    change_column_null(:tests, :level, false)
  end
end
