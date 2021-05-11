class CreatePriorities < ActiveRecord::Migration[6.1]
  def change
    create_table :priorities do |t|
      t.string :priority_item
      t.integer :serialize
      t.boolean :mukou

      t.timestamps
    end
  end
end
