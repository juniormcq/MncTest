class Worker < ActiveRecord::Base
	has_many :attendances
	validates :codigo, :presence => true
	validates :name, :presence => true
	validates :puesto, :presence => true
	validates :name, :length => { :minimum => 3}
	validates :puesto, :length => { :minimum => 3}
	validates :codigo, :numericality => { :only_integer => true }
	validates :codigo, :uniqueness => true
end
