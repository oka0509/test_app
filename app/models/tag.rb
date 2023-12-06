class Tag < ApplicationRecord
  has_many :tag_diaries, dependent: :destroy
  has_many :diaries, through: :tag_diaries

  def self.ransackable_attributes(_auth_object = nil)
    ['name']
  end
end
