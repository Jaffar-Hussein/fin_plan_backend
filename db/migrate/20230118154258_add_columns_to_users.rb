class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :source_type, :string
    add_column :users, :retirement_age, :string
    add_column :users, :bank_balance, :integer
  end
end
