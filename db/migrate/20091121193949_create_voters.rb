class CreateVoters < ActiveRecord::Migration
  def self.up
    create_table :voters do |t|
      t.integer :user_id
      t.integer :group_id
      t.decimal :vflag

      t.timestamps
    end
  end

  def self.down
    drop_table :voters
  end
end
