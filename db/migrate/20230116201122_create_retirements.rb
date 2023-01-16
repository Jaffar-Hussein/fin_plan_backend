class CreateRetirements < ActiveRecord::Migration[7.0]
  def change
    create_table :retirements do |t|
      t.integer :retirement_age
      t.integer :retirement_goal
      t.integer :money_saved
      t.integer :savings
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
