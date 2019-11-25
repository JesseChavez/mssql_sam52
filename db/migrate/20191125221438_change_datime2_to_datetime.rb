class ChangeDatime2ToDatetime < ActiveRecord::Migration[5.2]
  def change
    change_column :categories, :created_at, :datetime_basic
    change_column :categories, :updated_at, :datetime_basic
  end
end
