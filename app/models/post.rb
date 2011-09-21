class Post < ActiveRecord::Base
  scope :newer, order("`#{table_name}`.`created_at` DESC")

  def new?
    Time.now - created_at < 6*60*60
  end
end
