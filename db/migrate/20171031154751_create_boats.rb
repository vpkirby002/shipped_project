class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :bname
      t.integer :capacity 
      t.references :current_location, source: :regions
      t.references :region
      t.attachment :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
