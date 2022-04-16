class CreateTransients < ActiveRecord::Migration[7.0]
  def change
    create_table :transients do |t|
      t.string :key
      t.string :value
      t.datetime :expiration
    end
  end
end
