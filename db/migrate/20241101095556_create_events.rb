class CreateEvents < ActiveRecord::Migration[7.2]
  def change
    create_table :events do |t|
      t.datetime :date
      t.timestamps
    end
  end
end
