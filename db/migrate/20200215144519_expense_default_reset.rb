class ExpenseDefaultReset < ActiveRecord::Migration[6.0]
  def change
    change_column_default :expenses ,:category,nil
    change_column_default :expenses ,:payment,nil
  end
end
