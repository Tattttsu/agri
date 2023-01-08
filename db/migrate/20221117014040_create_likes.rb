class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :farm, null: false, foreign_key: true

      t.timestamps
    end
    add_index :likes, [:user_id, :farm_id], unique: true
  end
end
