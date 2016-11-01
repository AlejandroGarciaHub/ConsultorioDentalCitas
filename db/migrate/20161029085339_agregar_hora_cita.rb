class AgregarHoraCita < ActiveRecord::Migration
  def change
  	add_column :appointments, :hora_programada, :time
  end
end
