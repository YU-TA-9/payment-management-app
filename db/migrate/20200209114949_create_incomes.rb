class CreateIncomes < ActiveRecord::Migration[6.0]
  def change
    create_table :incomes do |t|
      t.integer :value
      t.text :detail

      t.timestamps
    end
  end
end
