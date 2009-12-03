class Event < ActiveRecord::Base
  belongs_to :group
  has_many :candidates

  validates_presence_of :ename, :edescription, :group_id, :start_date, :end_date

end
