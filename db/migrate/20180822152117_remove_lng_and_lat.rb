class RemoveLngAndLat < ActiveRecord::Migration[5.2]
  def change
    remove_column :combis, :lng
    remove_column :combis, :lat
  end
end
