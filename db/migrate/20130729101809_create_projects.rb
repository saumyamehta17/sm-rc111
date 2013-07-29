class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :price
      t.references :category

      t.timestamps
    end
    add_index :projects, :category_id
  end
end
