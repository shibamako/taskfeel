class CreateStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :statuses do |t|
      t.string :status_item
      t.integer :serialize
      t.boolean :mukou

      t.timestamps
    end
  end
end
