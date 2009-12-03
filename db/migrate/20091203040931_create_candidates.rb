class CreateCandidates < ActiveRecord::Migration
  def self.up
    create_table :candidates do |t|
      t.integer :event_id
      t.string :lname
      t.string :fname
      t.string :title
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :candidates
  end
end
