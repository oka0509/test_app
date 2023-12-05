class User < ApplicationRecord
  has_secure_password
  has_many :diaries, dependent: :destroy

  def self.ransackable_attributes(_auth_object = nil)
    ['name']
  end
end
