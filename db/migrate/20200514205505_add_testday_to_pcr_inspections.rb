class AddTestdayToPcrInspections < ActiveRecord::Migration[5.1]
  def change
    add_column :pcr_inspections, :testday, :date
  end
end
