class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :fecha_programada
      t.boolean :finalizada
      t.boolean :aceptada

      t.timestamps null: false
    end
  end
end
