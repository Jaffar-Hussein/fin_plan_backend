class DropDebts < ActiveRecord::Migration[7.0]
  def change
    drop_table :debts
  end
end
