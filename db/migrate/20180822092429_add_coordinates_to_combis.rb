class AddCoordinatesToCombis < ActiveRecord::Migration[5.2]
  def change
    add_column :combis, :latitude, :float
    add_column :combis, :longitude, :float
  end
end
