class CardSetsAddUniqueIndexForSlug < ActiveRecord::Migration[7.0]
  def change
    change_column_null :card_sets, :name, false
    change_column_null :card_sets, :slug, false

    add_index :card_sets, :slug, unique: true
  end
end
