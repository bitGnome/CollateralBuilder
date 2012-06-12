class AddInitialPageCountToCatalog < ActiveRecord::Migration
  def change
    add_column :catalogs, :initial_page_count, :integer
  end
end
