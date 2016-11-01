class Appointment < ActiveRecord::Base
	belongs_to :user
	has_many :payments
 	has_many :procedures, through: :appointments_procedures
end
