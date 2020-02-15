class ExpenseseAddNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :expenses ,:value,false
    change_column_null :expenses ,:detail,false
    change_column_null :expenses ,:category,false
    change_column_null :expenses ,:payment,false
  end
end
