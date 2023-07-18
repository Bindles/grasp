class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #user has_one Profile
  has_one :profile, dependent: :destroy

  # User has_many Tutorials, Reviews, and Comments
  has_many :tutorials
  has_many :reviews
  has_many :comments
end
