class Procedure < ActiveRecord::Base
		belongs_to :category
		has_many :appointments, through: :appointments_procedures
end
