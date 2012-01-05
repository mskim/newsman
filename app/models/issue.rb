class Issue < ActiveRecord::Base
  
  belongs_to :publication
  has_many :sections
end
