class AddFeatureToFarms < ActiveRecord::Migration[6.1]
  def change
    add_column :farms, :feature, :text
  end
end
