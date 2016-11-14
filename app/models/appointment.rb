class Appointment < ActiveRecord::Base
	belongs_to :user
	has_many :payments
 	has_many :procedures, through: :appointments_procedures

 	validates :fecha_programada, :presence => true
 	validates :hora_programada, :presence => true
end
