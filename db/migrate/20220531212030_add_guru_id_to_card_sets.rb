class AddGuruIdToCardSets < ActiveRecord::Migration[7.0]
  def change
    add_column :card_sets, :guru_id, :string
  end
end
