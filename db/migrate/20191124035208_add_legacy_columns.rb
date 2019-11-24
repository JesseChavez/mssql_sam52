class AddLegacyColumns < ActiveRecord::Migration[5.1]
  def up
    add_column :categories, :legacy_photo, :image
    add_column :categories, :available_at, :datetime_basic
    add_column :categories, :expires_at, :datetime_basic
  end

  def down
    remove_column :categories, :legacy_photo, :image
    remove_column :categories, :available_at, :datetime_basic
    remove_column :categories, :expires_at, :datetime_basic
  end
end
