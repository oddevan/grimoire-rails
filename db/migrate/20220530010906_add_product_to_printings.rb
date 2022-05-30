class AddProductToPrintings < ActiveRecord::Migration[7.0]
  def change
    add_column :printings, :tcgplayer_product, :integer
  end
end
