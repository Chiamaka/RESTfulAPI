class Api::TenantsController < ApplicationController

	def index
		@tenants = Tenant.all
	end

	def create
		crib = Cribb.find(tenant_params[:cribb_id])
		school = School.find(tenant_params[:school_id])
		if school
			if crib
				tenant = Tenant.new(tenant_params)
				if tenant.save
					render json: {
						data: {
							message: "Tenant successfully created",
							code: 900
						}
					}
				else
					render json: {
						error: {
							message: tenant.errors,
							code: 810
						}
					}
				end
			end
		end
	end

	def show
		@tenant = Tenant.find(params[:id])
	end

	def update
		#school = School.find(tenant_params[:school_id])
		#crib = Cribb.find(tenant_params[:cribb_id])
		tenant = Tenant.find(params[:id])
		if tenant.update(tenant_params)
			render json: {
				data: {
					message: "Tenant was successfully updated",
					code: 900
				}
			}
		end
	end

	def destroy
		tenant = Tenant.find(params[:id])
		if tenant.destroy
			render json: {
				data: {
					message: "Tenant was successfully deleted",
					code: 900
				}
			}
		else
			render json: {
				error: {
					message: tenant.errors,
					code: 810
				}
			}
		end
	end	

	private
	def tenant_params
		params.require(:data).permit(:name, :age, :national_id, :school_id, :cribb_id)
	end
end
