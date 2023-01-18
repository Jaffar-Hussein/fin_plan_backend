class AddColumnToRetirements < ActiveRecord::Migration[7.0]
  def change
    add_column :retirements, :name, :string
  end
end
