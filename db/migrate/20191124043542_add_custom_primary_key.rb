class AddCustomPrimaryKey < ActiveRecord::Migration[5.1]
  def change
    add_column :customs, :remote_id, :primary_key
  end
end
