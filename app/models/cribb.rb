class Cribb < ActiveRecord::Base
	belongs_to :owner
	has_many :tenants
end
