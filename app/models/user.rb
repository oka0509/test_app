class User < ApplicationRecord
  has_many :diaries, dependent: :destroy
  has_many :tags, through: :user_tags
  has_many :user_tags, dependent: :destroy
end
