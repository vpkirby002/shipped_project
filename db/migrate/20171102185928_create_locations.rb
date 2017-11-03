class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :location_name
      t.references :region

      t.timestamps
    end
  end
end
