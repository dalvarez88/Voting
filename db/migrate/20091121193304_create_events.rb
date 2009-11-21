class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.decimal :eid
      t.decimal :gid
      t.string :ename
      t.string :edescription
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
