class Api::TenantsController < ApplicationController
	def index
		@tenants = Tenant.all
	end

	def show
		@tenant = Tenant.find(params[:id])
	end

	rescue_from ActiveRecord::RecordNotFound do 
		render json:{
				status: 404,
				message: "Tenant does not exist"
			}
	end
end
