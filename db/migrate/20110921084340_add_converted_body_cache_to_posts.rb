class AddConvertedBodyCacheToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :converted_body_cache, :text
  end

  def self.down
    remove_column :posts, :converted_body_cache
  end
end
