class QuickVotes < ActiveRecord::Migration
  def self.up
    create_table :quickvotes do |t|
      t.integer :candidate_id
      t.string :candidate_name
      t.integer :votes, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :quickvotes
  end
end
