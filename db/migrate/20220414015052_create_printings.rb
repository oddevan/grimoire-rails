class CreatePrintings < ActiveRecord::Migration[7.0]
  def change
    create_table :printings do |t|
      t.string :name, null: false
      t.string :grimoire_id, null: false
      t.integer :tcgplayer_sku
      t.references :card_set, null: false, foreign_key: true
      t.string :signature_data, null: false
      t.string :signature, null: false
      t.string :sequence

      t.timestamps
    end
    add_index :printings, :grimoire_id, unique: true
    add_index :printings, :signature
    add_index :printings, :sequence
  end
end
