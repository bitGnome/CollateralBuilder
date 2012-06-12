class Catalog < ActiveRecord::Base
  attr_accessible :drop_date, :name, :initial_page_count, :size
  
  has_many :pages, :as  => :book, :dependent  => :destroy
  
  after_save :create_catalog_pages
  
  private 
  
  def create_catalog_pages
    
    order = 1
    
    self.initial_page_count.times do
      page = self.pages.new
      page.order = order
      page.section_name = "Page #{order}"
      page.save
      order += 1
    end
  end
end
