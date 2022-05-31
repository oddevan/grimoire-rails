class AddCodeToCardSet < ActiveRecord::Migration[7.0]
  def change
    add_column :card_sets, :code, :string
  end
end
