class Product < ActiveRecord::Base
  attr_accessible :bluesign, :copy, :country_of_origin, :e_style, :fit, :goretex, :name, :polartec, :price, :size_range, :status, :style_number, :team, :upf, :weight_oz

  belongs_to :season
  
end
