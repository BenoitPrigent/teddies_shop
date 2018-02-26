class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :state
      t.string :teddy_sku
      t.jsonb :payment
      t.monetize :amount, currency: { present: false }

      t.timestamps
    end
  end
end
