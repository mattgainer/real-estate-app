class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.text :description
      t.integer :year_built
      t.integer :square_feet
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :floors
      t.boolean :availability, default: true
      t.decimal :price, precision: 10, scale: 2

      t.timestamps null: false
    end
  end
end
