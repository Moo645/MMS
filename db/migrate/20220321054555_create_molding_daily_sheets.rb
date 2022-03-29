class CreateMoldingDailySheets < ActiveRecord::Migration[6.1]
  def change
    create_table :molding_daily_sheets do |t|
      t.integer :manufacturing_order_id
      t.integer :employee_id
      t.string :shift
      t.integer :ipqc_id
      t.integer :engineer_id

      t.timestamps
    end
  end
end
