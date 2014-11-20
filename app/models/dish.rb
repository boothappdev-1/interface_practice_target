class Dish < ActiveRecord::Base
  validates :name, :uniqueness => true, :presence => true

  belongs_to :cuisine

  has_many :favorites
  has_many :venues, :through => :favorites
  has_many :users, :through => :favorites
end
