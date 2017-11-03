class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :jname
      t.string :description 
      t.integer :origin_id
      t.integer :destination_id
      t.integer :containers
      t.integer :cost

      t.timestamps
    end
  end
end

#ADD REGION (ragion where boat operates)