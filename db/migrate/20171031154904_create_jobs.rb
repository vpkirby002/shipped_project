class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :description
      t.string :origin
      t.string :destination
      t.integer :containers
      t.integer :cost

      t.timestamps
    end
  end
end

#ADD REGION (ragion where boat operates)