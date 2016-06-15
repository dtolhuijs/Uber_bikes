class AddUserReferenceToBookings < ActiveRecord::Migration
  def change
    add_reference :bookings, :user, index: true, foreign_key: true
  end
end
