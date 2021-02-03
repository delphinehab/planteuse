class AddPlantToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :plant, null: false, foreign_key: true
  end
end
