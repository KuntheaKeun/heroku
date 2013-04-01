class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :First_name
      t.string :Last_name
      t.date :Date_of_birth
      t.string :Email_address
      t.integer :Age
      t.string :Sex
      t.string :Nationality
      t.text :work_experiance

      t.timestamps
    end
  end
end
