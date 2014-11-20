class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # validates(:username, { :uniqueness => true, :presence => true })

  has_many :favorites
  has_many :venues, :through => :favorites
  has_many :dishes, :through => :favorites
end
