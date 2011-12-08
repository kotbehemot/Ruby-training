class Post < ActiveRecord::Base
  attr_accessible :text

  belongs_to :user, :inverse_of => :posts
  
  validates :text, :user_id, 
    :presence => true,
    :length => {:maximum => 140}

  scope :latest, order('created_at DESC').limit(2)
  scope :having_prefix, lambda {|prefix| where('text LIKE ?', "#{prefix}%") }

end
