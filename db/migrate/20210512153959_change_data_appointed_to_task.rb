class ChangeDataAppointedToTask < ActiveRecord::Migration[6.1]
  def change
    change_column :tasks, :appointed, :datetime
  end
end
