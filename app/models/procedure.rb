class Procedure < ActiveRecord::Base
		belongs_to :category
		has_many :appointments, through: :appointments_procedures

		validates :nombre, :presence => true
		validates :descripcion, :presence => true
 		validates :costo, :presence => true 	 	
end
