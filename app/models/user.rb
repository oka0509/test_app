class User < ApplicationRecord
  has_secure_password
  has_many :diaries, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, confirmation: true

  def self.ransackable_attributes(_auth_object = nil)
    ['name']
  end
end
