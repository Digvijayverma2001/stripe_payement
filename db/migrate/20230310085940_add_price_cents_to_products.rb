class AddPriceCentsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :price_cents, :string
  end
end
