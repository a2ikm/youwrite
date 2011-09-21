class Post < ActiveRecord::Base
  scope :newer, order("`#{table_name}`.`created_at` DESC")
end
