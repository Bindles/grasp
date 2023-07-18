class Review < ApplicationRecord
  belongs_to :user
  belongs_to :tutorial

  # Review has_many Comments (as commentable)
  has_many :comments, as: :commentable
end
