class ChangeIncomesColumnsNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :incomes ,:value,false
    change_column_null :incomes ,:detail,false
  end
end
