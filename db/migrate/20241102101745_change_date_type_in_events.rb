class ChangeDateTypeInEvents < ActiveRecord::Migration[7.2]
  def up
    change_column :events, :date, :date
  end

  def down
    change_column :events, :date, :datetime
  end
end
