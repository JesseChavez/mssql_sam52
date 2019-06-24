class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :email
      t.string :given_name
      t.string :family_name
      t.string :nickname, limit: 10
      t.boolean :unverified_email
      t.boolean :status
      t.string :encrypted_password
      t.datetime :password_expires_at
      t.boolean :daily_alerts
      t.time :daily_alerts_at, precision: 0
      t.integer :login_attempts
      t.integer :max_login_attempts
      t.time :start_online_at, precision: 3
      t.time :finish_online_at
      t.boolean :auto_online
      t.date :birthday
      t.binary :photo
      t.decimal :cashback
      t.decimal :credit, precision: 18, scale: 2
      t.float :starts
      t.float :max_starts
      t.text :notes

      t.timestamps
    end
    add_index :accounts, :email, unique: true
    add_index :accounts, :nickname
  end
end
