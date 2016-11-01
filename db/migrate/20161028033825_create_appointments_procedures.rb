class CreateAppointmentsProcedures < ActiveRecord::Migration
  def change
    create_table :appointments_procedures do |t|
      t.text :anotaciones

      t.timestamps null: false
    end
  end
end
