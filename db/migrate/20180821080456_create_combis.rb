class CreateCombis < ActiveRecord::Migration[5.2]
  def change
    create_table :combis do |t|
      t.string :model
      t.text :description
      t.integer :price
      t.references :user
      t.string :photo
      t.float :lat
      t.float :lng
      t.string :address
      t.string :city

      t.timestamps
    end
  end
end
