class Diary < ApplicationRecord
  has_many :tags, through: :tag_diaries
  has_many :tag_diaries, dependent: :destroy
  belongs_to :user
end
