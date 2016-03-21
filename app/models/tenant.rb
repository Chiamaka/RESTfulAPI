class Tenant < ActiveRecord::Base
	belongs_to :cribb
	belongs_to :school
end
