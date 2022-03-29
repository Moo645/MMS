class CreateMoldingDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :molding_details do |t|
      t.integer :molding_daily_sheet_id
      t.string :molding_detail_no
      t.integer :molding_cycle
      t.decimal :molding_lot_weight

      t.timestamps
    end
  end
end
