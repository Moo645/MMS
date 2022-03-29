class CreateManufacturingOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :manufacturing_orders do |t|
      t.string :manufacturing_order_no
      t.integer :product_id
      t.integer :production_quantity
      t.string :order_no
      t.integer :order_quantity

      t.timestamps
    end
  end
end
