class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :companyname
      t.attachment :photo

      t.timestamps
    end
  end
end
