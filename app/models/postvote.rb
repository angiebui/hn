class Postvote < ActiveRecord::Base
  belongs_to :post

  after_save :update_postvotes

  def update_postvotes
    post.calculate_postvotes
  end 
end


# validations
# can't vote on your own post
# can't vote more than once
# if you upvote, you can only downvote. if you downvote, your upvote is gone
