class Appointment < ActiveRecord::Base
	belongs_to :user
	has_many :payments
 	has_many :appointments_procedures,  dependent: :destroy 

 	validates :fecha_programada, :presence => true
 	validates :hora_programada, :presence => true
end
