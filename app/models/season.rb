class Season < ActiveRecord::Base
  attr_accessible :name, :year
  
  has_many :products
  
end
