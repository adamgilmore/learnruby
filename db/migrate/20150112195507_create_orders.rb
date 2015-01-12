class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer
      t.integer :count
      t.references :product, index: true

      t.timestamps null: false
    end
    add_foreign_key :orders, :products
  end
end
