class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.integer :user_id
      t.string :ip_address
      t.decimal :latitude, precision: 12, scale: 6
      t.decimal :longitude, precision: 12, scale: 6
      t.boolean :ldap_auth
      t.time :reset_time
      t.datetime :blocked_at
      t.text :user_agent

      t.timestamps
    end
  end
end
