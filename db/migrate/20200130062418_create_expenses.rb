class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.integer :category
      t.integer :payment
      t.integer :value
      t.text :detail

      t.timestamps
    end
  end
end
