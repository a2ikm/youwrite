class Post < ActiveRecord::Base
  paginates_per 5
  
  scope :newer, order("created_at DESC")

  validates_presence_of :name
  validates_presence_of :body

  def new?
    Time.now - created_at < 6*60*60
  end
  
  def converted_body
    unless converted_body_cache
      options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode]
      self.converted_body_cache = Redcarpet.new(body, *options).to_html
      save
    end
    converted_body_cache
  end
end
