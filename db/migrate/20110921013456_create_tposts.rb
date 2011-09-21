class CreateTposts < ActiveRecord::Migration
  def self.up
    create_table :tposts do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :tposts
  end
end
