class AddTitleToEvents < ActiveRecord::Migration[7.2]
  def change
    add_column :events, :title, :string
  end
end
