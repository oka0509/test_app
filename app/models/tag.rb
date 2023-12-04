class Tag < ApplicationRecord
  has_many :tag_diaries, dependent: destroy
end
