class ChangeBookingDateColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :date

    add_column :bookings, :begin_date, :string
    add_column :bookings, :end_date, :string
  end
end
