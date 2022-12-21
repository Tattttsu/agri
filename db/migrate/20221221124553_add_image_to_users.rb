class AddImageToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :image, :string
    remove_column :users, :icon, :string
  end
end
