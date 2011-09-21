class Post < ActiveRecord::Base
  paginates_per 5
  
  scope :newer, order("created_at DESC")

  validates_presence_of :name
  validates_presence_of :body

  def new?
    Time.now - created_at < 6*60*60
  end
end
