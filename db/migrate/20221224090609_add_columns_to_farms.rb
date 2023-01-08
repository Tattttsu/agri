class AddColumnsToFarms < ActiveRecord::Migration[6.1]
  def change
    add_column :farms, :latitude, :float
    add_column :farms, :longitude, :float
  end
end
