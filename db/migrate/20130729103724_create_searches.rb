class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.decimal :min_price
      t.decimal :max_price
      t.references :category

      t.timestamps
    end
    add_index :searches, :category_id
  end
end
