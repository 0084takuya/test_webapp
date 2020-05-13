class CreatePcrInspections < ActiveRecord::Migration[5.1]
  def change
    create_table :pcr_inspections do |t|
      t.integer :subject_id
      t.integer :clinic_id
      t.integer :result
      t.string :remarks

      t.timestamps
    end
  end
end
