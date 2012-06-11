class Page < ActiveRecord::Base
  attr_accessible :order, :section_name
  
  belongs_to  :book, :polymorphic  => true
  
end
