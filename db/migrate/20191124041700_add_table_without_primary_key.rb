class AddTableWithoutPrimaryKey < ActiveRecord::Migration[5.1]
  def change
    create_table :customs, id: false do |t|
      t.string :task
      t.timestamps
    end
  end
end
