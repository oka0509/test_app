class TagDiary < ApplicationRecord
  belongs_to :tag
  belongs_to :diary
end
