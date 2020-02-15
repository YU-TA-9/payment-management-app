class ExpenseDefaultSetup < ActiveRecord::Migration[6.0]
  def change
    change_column_default :expenses ,:category,0
    change_column_default :expenses ,:payment,0
  end
end
