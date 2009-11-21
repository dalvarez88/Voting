class CreateBallots < ActiveRecord::Migration
  def self.up
    create_table :ballots do |t|
      t.decimal :bid
      t.decimal :gid
      t.decimal :eid
      t.string :rstring

      t.timestamps
    end
  end

  def self.down
    drop_table :ballots
  end
end
