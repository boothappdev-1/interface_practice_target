class Venue < ActiveRecord::Base
  validates :name, :uniqueness => true, :presence => true

  has_many :favorites
  has_many :users, :through => :favorites
  has_many :dishes, :through => :favorites
end
