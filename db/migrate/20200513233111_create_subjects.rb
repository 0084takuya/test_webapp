class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :gender
      t.date :birthday
      t.string :address

      t.timestamps
    end
  end
end
