class ChangeDataContentToDiary < ActiveRecord::Migration[7.1]
  def change
    change_column :diaries, :content, :text
  end
end
