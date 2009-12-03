class Group < ActiveRecord::Base
  has_many :event
  belongs_to :user
  belongs_to :gadmin
  
  validates_presence_of :gname
  validates_numericality_of :public, :with=>/[01]/, :message =>"must be 0 or 1"
end
