class AddAddressToFarms < ActiveRecord::Migration[6.1]
  def change
    add_column :farms, :address, :string
    add_column :farms, :image, :string
    add_column :users, :name, :string
    add_column :users, :icon, :string
  end
end
