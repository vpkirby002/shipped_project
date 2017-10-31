class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :bname
      t.integer :capacity
      t.string :current_location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
