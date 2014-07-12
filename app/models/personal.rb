class Personal < ActiveRecord::Base
	belongs_to :empresa
	belongs_to :cargo
	belongs_to :area
	validates_presence_of :nombre, :apellido
end
