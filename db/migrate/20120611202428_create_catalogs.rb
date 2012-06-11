class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.string :name
      t.integer :page_count
      t.date :drop_date
      t.string :size

      t.timestamps
    end
  end
end
