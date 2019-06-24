class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name, limit: 50
      t.boolean :relevant
      t.decimal :score, precision: 4, scale: 3
      t.decimal :market_value, precision: 6, scale: 2
      t.text :notes

      t.timestamps
    end
  end
end
