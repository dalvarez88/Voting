class Group < ActiveRecord::Base
  has_many :event
  belongs_to :user
  belongs_to :gadmin
  
  validates_presence_of :gname
  validates_numericality_of :public
end
