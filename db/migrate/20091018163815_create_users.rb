class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :username
      t.string :encryptedPassword
      t.string :year
      t.string :college

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
