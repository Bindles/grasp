class Tutorial < ApplicationRecord
  # Tutorial belongs_to User
  belongs_to :user

  # Tutorial has_many Reviews
  has_many :reviews

  # Tutorial has_many Comments (as commentable)
  has_many :comments, as: :commentable
  
end
