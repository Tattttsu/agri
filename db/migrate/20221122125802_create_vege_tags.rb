class CreateVegeTags < ActiveRecord::Migration[6.1]
  def change
    create_table :vege_tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
