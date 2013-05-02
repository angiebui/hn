class Comment < ActiveRecord::Base
  belongs_to :commenter, class_name: "User", foreign_key: "commenter_id"
  has_many :comments, :as => :commentable, :include => [:comments, :commenter]
  belongs_to :commentable, :polymorphic => true
end
