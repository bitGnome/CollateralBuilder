class RemovePageCountFromCatalog < ActiveRecord::Migration
  def up
    remove_column :catalogs, :page_count
  end

  def down
    add_column :catalogs, :page_count, :integer
  end
end
