class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|

      t.references :page
      t.references :asset, :polymorphic  => true
      
      t.timestamps
    end
  end
end
