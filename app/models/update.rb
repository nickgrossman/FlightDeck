class Update < ActiveRecord::Base
  validates :text, :presence => true
  #validates :author, :presence => true

  belongs_to :project
end
