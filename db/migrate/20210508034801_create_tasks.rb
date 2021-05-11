class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.date :appointed
      t.string :priority
      t.string :title
      t.string :category
      t.string :status
      t.text :memo

      t.timestamps
    end
  end
end
