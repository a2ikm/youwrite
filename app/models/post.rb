class Post < ActiveRecord::Base
  scope :newer, order("created_at DESC")

  def new?
    Time.now - created_at < 6*60*60
  end
end
