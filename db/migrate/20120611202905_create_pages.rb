class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :section_name
      t.integer :order
      t.references :book, :polymorphic  => true
      t.timestamps
    end
  end
end
