class Cargo < ActiveRecord::Base
	has_many :personals
	validates_presence_of :nombre
end
