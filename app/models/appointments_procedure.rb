class AppointmentsProcedure < ActiveRecord::Base
	belongs_to :appointment
	belongs_to :procedure
validates :procedure_id, :presence => true
	
end
