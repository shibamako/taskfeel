class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :category_item
      t.integer :serialize
      t.boolean :mukou

      t.timestamps
    end
  end
end
