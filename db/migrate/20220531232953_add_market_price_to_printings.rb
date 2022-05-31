class AddMarketPriceToPrintings < ActiveRecord::Migration[7.0]
  def change
    add_column :printings, :market_price, :decimal
  end
end
