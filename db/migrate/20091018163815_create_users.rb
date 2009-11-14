class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :andrewID
      t.boolean :admin?, :default => false
      t.timestamp :last_login
      t.string :email
      t.string :year
      t.string :college

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
