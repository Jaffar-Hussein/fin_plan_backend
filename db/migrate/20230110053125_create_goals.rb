class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.string :goal_name
      t.integer :amount
      t.date :due_date

      t.timestamps
    end
  end
end
