class CreateBallots < ActiveRecord::Migration
  def self.up
    create_table :ballots do |t|
      t.integer :group_id
      t.integer :event_id
      t.string :rstring

      t.timestamps
    end
  end

  def self.down
    drop_table :ballots
  end
end
