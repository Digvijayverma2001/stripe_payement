class AddPriceCentsToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :price_cents, :integer
  end
end
