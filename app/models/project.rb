class Project < ActiveRecord::Base
  def full_name 
    "#{name}: #{client}"
  end
  
  has_many :updates
end