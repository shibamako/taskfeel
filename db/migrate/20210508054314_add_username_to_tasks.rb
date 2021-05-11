class AddUsernameToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :username, :string
  end
end
