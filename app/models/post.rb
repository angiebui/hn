class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :as => :commentable
  has_many :postvotes

  def calculate_postvotes
    self.postvotes_count = self.postvotes.inject(0) {|sum, n| sum + n.score}
    self.save
  end
end
  
