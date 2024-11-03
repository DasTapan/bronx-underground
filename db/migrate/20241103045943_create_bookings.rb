class CreateBookings < ActiveRecord::Migration[7.2]
  def change
    create_table :bookings do |t|
      t.timestamps
      t.references :event, null: false, foreign_key: true
      t.references :attendee, null: false, foreign_key: {to_table: :users}
    end
  end
end
