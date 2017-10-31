class CreateBoatJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :boat_jobs do |t|
      t.references :jobs, foreign_key: true
      t.references :boats, foreign_key: true

      t.timestamps
    end
  end
end
