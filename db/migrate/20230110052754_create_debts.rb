class CreateDebts < ActiveRecord::Migration[7.0]
  def change
    create_table :debts do |t|
      t.string :debt_name
      t.integer :amount
      t.date :date
      t.string :status

      t.timestamps
    end
  end
end
