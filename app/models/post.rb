class Post < ActiveRecord::Base

  belongs_to :user
  has_many :comments
  validates :title, :user_id, presence: true
    # validates :title, :url, :likes, :user_id, presence: true
end

  # updated 30 Mar
