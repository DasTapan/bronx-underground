class AddEventDateTimeToEvents < ActiveRecord::Migration[7.2]
  def change
    add_column :events, :event_at, :datetime
  end
end
