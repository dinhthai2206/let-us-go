class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
