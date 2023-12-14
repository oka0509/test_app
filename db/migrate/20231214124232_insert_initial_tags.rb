class InsertInitialTags < ActiveRecord::Migration[7.1]
  def change
    tags = ['面白かった', '面白くなかった', '楽しかった', '楽しくなかった', 'つらかった', 'つらくはなかった']
    tags.each do |tag|
      Tag.create!(name: tag)
    end
  end
end
