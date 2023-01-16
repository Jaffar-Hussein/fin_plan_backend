class CreateDebts < ActiveRecord::Migration[7.0]
  def change
    create_table :debts do |t|
      t.integer :goal_amount
      t.string :name
      t.integer :amount_saved
      t.datetime :due_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
