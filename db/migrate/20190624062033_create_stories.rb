class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.references :account, foreign_key: true
      t.references :category, foreign_key: true
      t.string :title
      t.boolean :active
      t.datetime :publish_on, precision: 3
      t.integer :likes, default: 1
      t.integer :dislikes, default: 0
      t.text :content

      t.timestamps
    end
  end
end
