class AddAppointmentIdToAppointmentsProcedures < ActiveRecord::Migration
  def change
    add_reference :appointments_procedures, :appointment, index: true, foreign_key: true
    add_reference :appointments_procedures, :procedure, index: true, foreign_key: true
  end
end
