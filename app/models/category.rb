class Category < ActiveRecord::Base
	has_many :procedures
	validates :nombre, :presence => true
 	
end
