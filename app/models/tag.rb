class Tag < ApplicationRecord
  has_many :tag_diaries, dependent: :destroy

  def self.ransackable_attributes(_auth_object = nil)
    ['name']
  end
end
