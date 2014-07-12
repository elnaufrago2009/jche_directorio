class User < ActiveRecord::Base
	belongs_to :empresa
	belongs_to :cargo
	belongs_to :area
	validates_presence_of :nombre, :apellido
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
