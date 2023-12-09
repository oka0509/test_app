class Diary < ApplicationRecord
  has_many :tag_diaries, dependent: :destroy
  has_many :tags, through: :tag_diaries
  belongs_to :user

  validates :content, presence: true

  def take_tag(tag)
    TagDiary.create_or_find_by!(diary_id: id, tag_id: tag.id)
  end

  def self.ransackable_attributes(_auth_object = nil)
    ['content']
  end

  def self.ransackable_associations(_auth_object = nil)
    %w[user tags]
  end
end
