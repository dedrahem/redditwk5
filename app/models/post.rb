class Post < ActiveRecord::Base

  belongs_to :user
  has_many :comments
  validates :title, presence: true
    # validates :title, :url, :likes, :user_id, presence: true
end

  # updated 30 Mar
