class CreateRetirements < ActiveRecord::Migration[7.0]
  def change
    create_table :retirements do |t|
      t.integer :years
      t.integer :amount_so_far
      t.integer :goal
      t.string :sources

      t.timestamps
    end
  end
end
