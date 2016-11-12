class AppointmentsProcedure < ActiveRecord::Base
	belongs_to :appointment
	belongs_to :procedure

	
end
