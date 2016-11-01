class AgregarDeafultCitas < ActiveRecord::Migration
  def change
  	change_column :appointments, :finalizada, :boolean, :default => false
  	change_column :appointments, :aceptada, :boolean, :default => false  	
  end
end
