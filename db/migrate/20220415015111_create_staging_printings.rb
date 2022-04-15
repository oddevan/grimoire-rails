class CreateStagingPrintings < ActiveRecord::Migration[7.0]
  def change
    create_table :staging_printings do |t|
      t.string :name
      t.string :grimoire_id
      t.integer :tcgplayer_sku
      t.references :card_set, null: true, foreign_key: true
      t.string :signature_data
      t.string :signature
      t.string :sequence
      t.string :image_url

      t.timestamps
    end
  end
end
