class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :image
      t.decimal :price
      t.string :category

      t.timestamps
    end
  end
end
