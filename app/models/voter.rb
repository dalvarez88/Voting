class Voter < ActiveRecord::Base
  has_one :ballot
end
