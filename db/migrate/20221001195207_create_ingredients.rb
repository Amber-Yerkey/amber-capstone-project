class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.boolean :gluten_safe
      t.boolean :vegan_safe

      t.timestamps
    end
  end
end