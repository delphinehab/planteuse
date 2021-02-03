class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :description
      t.string :size
      t.integer :price
      t.string :watering
      t.string :sun_exhibition
      t.string :indoor
      t.string :cutting
      t.string :maintenance

      t.timestamps
    end
  end
end
