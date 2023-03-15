class AddPriceCurrencyToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :price_currency, :string
  end
end
