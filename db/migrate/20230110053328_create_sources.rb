class CreateSources < ActiveRecord::Migration[7.0]
  def change
    create_table :sources do |t|
      t.string :name
      t.string :type
      t.integer :amount
      t.string :frequency

      t.timestamps
    end
  end
end
