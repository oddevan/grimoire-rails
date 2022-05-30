class AddProductToStagingPrinting < ActiveRecord::Migration[7.0]
  def change
    add_column :staging_printings, :tcgplayer_product, :integer
  end
end
