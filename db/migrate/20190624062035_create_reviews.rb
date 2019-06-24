class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :story, foreign_key: true
      t.integer :rate
      t.string :autor
      t.decimal :donation
      t.decimal :market_value, precision: 6, scale: 2
      t.text :content

      t.timestamps
    end
  end
end
