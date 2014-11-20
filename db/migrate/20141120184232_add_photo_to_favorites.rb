class AddPhotoToFavorites < ActiveRecord::Migration
  def change
    add_column :favorites, :photo, :string
  end
end
