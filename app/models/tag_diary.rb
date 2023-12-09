# frozen_string_literal: true

class TagDiary < ApplicationRecord
  belongs_to :tag
  belongs_to :diary
end
