class User < ActiveRecord::Base
  has_many :group
  
  validates_uniqueness_of :andrewID 
  validates_confirmation_of :encryptedPassword, :on => :create 
  validates_length_of :encryptedPassword, :within => 5..40
  
  # If a user matching the credentials is found, returns the User object. 
  # If no matching user is found, returns nil. 
  def self.authenticate(user_info)
    find_by_andrewID_and_encryptedPassword(user_info[:andrewID], user_info[:encryptedPassword])
  end
end
