class CreateVoters < ActiveRecord::Migration
  def self.up
    create_table :voters do |t|
      t.decimal :vid
      t.decimal :uid
      t.decimal :vflag
      t.decimal :gid

      t.timestamps
    end
  end

  def self.down
    drop_table :voters
  end
end
