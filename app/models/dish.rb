class Dish < ActiveRecord::Base
  validates(:name, { :uniqueness => true, :presence => true })

  belongs_to :cuisine
end
