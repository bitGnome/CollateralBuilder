class Season < ActiveRecord::Base
  attr_accessible :name, :year
  
  has_many :products
  
  def name_year
    "#{name} #{year.year}"
  end
  
end
