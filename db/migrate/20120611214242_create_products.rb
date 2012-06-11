class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :style_number
      t.string :name
      t.decimal :weight_oz
      t.decimal :price
      t.string :size_range
      t.text :copy
      t.string :fit
      t.string :country_of_origin
      t.string :team
      t.string :bluesign
      t.string :polartec
      t.string :goretex
      t.string :e_style
      t.string :upf
      t.string :status
      t.references :season
      t.timestamps
    end
  end
end
