class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :address_1
      t.string :address_2

      t.timestamps
    end
  end
end
