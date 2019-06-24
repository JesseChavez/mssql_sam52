class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.references :account, foreign_key: true
      t.references :category, foreign_key: true
      t.string :title
      t.boolean :active
      t.datetime :publish_on
      t.integer :likes
      t.integer :dislikes
      t.text :content

      t.timestamps
    end
  end
end
