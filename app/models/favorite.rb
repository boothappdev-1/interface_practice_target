class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :dish
  belongs_to :venue

  validates :user, :presence => true, :uniqueness => { :scope => [:dish, :venue], :message => "has already favorited that" }
  validates :dish, :presence => true
  validates :venue, :presence => true

  mount_uploader :photo, PhotoUploader
end
