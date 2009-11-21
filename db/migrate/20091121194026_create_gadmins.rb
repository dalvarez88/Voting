class CreateGadmins < ActiveRecord::Migration
  def self.up
    create_table :gadmins do |t|
      t.decimal :gaid
      t.decimal :uid
      t.decimal :gid

      t.timestamps
    end
  end

  def self.down
    drop_table :gadmins
  end
end
