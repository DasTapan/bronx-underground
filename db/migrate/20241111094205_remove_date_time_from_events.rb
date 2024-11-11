class RemoveDateTimeFromEvents < ActiveRecord::Migration[7.2]
  def change
    remove_column :events, :date, :date
    remove_column :events, :time, :time
  end
end
