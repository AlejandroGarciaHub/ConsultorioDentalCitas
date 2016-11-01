class AddAppointmentIdToPayments < ActiveRecord::Migration
  def change
    add_reference :payments, :appointment, index: true, foreign_key: true
  end
end
