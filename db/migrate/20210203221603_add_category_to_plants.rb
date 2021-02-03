class AddCategoryToPlants < ActiveRecord::Migration[6.0]
  def change
    add_reference :plants, :category, null: false, foreign_key: true
  end
end
