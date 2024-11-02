class AddTimeToEvents < ActiveRecord::Migration[7.2]
  def change
    add_column :events, :time, :time
  end
end
